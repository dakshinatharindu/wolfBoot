qemu-system-riscv32 -machine sifive_e \
                    -nographic \
                    -device loader,file=../qemu_riscv32/example/jump,addr=0x20400000 \
                    -device loader,file=test-app/image_v1_signed.bin,addr=0x20020000 \
                    -device loader,file=test-app/image_v2_signed.bin,addr=0x20060000 \
                    -kernel wolfboot.elf \
                    # -s -S
