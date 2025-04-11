qemu-system-riscv32 -machine sifive_e \
                    -nographic \
                    -device loader,file=/workspaces/wolfboot-fuzzer/LibAFL/fuzzers/full_system/qemu_riscv32/example/lib/jump.bin,addr=0x20400000 \
                    -device loader,file=test-app/image_v1_signed.bin,addr=0x20020000 \
                    -device loader,file=test-app/image_v2_signed.bin,addr=0x20060000 \
                    -kernel wolfboot.elf \
                    # -s -S
