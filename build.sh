mkdir bin
../yuzu/bin/yc src/kmain.yuzu kmain.asm
cat src/entry.s kmain.asm > _.asm
nasm -f bin _.asm -o bin/kernel.bin
rm kmain.asm _.asm
../peel/bin/juicer c bin/kernel.bin bin/kernel.zip
cat ../seed/bin/fdseed.bin bin/kernel.zip > bin/kernel.img
