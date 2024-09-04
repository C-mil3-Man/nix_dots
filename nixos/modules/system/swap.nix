{ config, ... }:

{
  # Enable ZRAM-based swap for memory optimization
  zramSwap.enable = true;
  zramSwap.compressionAlgorithm = "zstd";   # Use zstd compression (efficient and fast)
  zramSwap.memoryLimit = "50%";            # Set the memory limit to 50% of the system RAM.
}

