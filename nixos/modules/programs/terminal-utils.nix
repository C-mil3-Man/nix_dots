{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    lazygit
    git-ignore
    gitleaks     # Detects secrets (API keys, passwords) in git repositories.
    pass-git-helper # Helper for using the "pass" password manager with git credentials.
    progress     # Tool to show progress of coreutils commands (e.g., cp, mv, dd).
    noti         # Monitor and send desktop notifications when long-running commands finish.
    topgrade     # Automatically upgrade all system software (packages, applications).
    ripgrep
    procs        # Modern replacement for `ps`, showing detailed information about running processes.
    tealdeer     # Fast, minimal `man` page viewer for popular command-line tools (`tldr` pages).
    vim
    # skim       # Fuzzy finder written in Rust (similar to `fzf`), commented out in favor of `fzf`.
    # monolith   # CLI tool to save web pages as a single HTML file.
    aria         # Terminal-based download manager for images, audio, and video from social media.
    # macchina   # Alternative to `neofetch` written in Rust, showing system information.
    sd           # Intuitive, faster alternative to `sed` for text replacement.
    ouch         # Multiformat archive extraction and compression tool written in Rust.
    duf          # Disk usage tool with an easy-to-read graphical output in the terminal.
    du-dust      # Disk usage analyzer, providing a visual representation of space usage.
    fd           # Simple, fast alternative to `find` for searching files.
    jq
    trash-cli    # CLI tool to move files to the trash instead of permanently deleting them.
    zoxide       # Smarter `cd` command, tracking and quickly accessing commonly used directories.
    tokei        # Codebase statistics tool that shows lines of code, files, comments, etc.
    fzf          # General-purpose fuzzy finder for searching files, directories, and commands.
    bat          # Enhanced `cat` with syntax highlighting and Git integration for file previews.
    mdcat        # Markdown viewer that renders Markdown files in the terminal.
    pandoc       # Universal document converter, useful for converting between different text formats.
    lsd          # Modern replacement for `ls`, with icons and colorized output.
    lsof         # Lists open files and helps find which processes are using certain files or sockets.
    gping        # `ping` replacement that provides graphical output for network latency.
    viu          # Terminal image viewer, allowing you to display images in the terminal.
    tre-command  # Modern alternative to `tree`, visualizing directory structures in the terminal.
    chafa        # Image-to-text converter for displaying images as colored characters in the terminal.
    felix-fm     # Fast and simple file manager written in Rust.
    rsclock      # Simple, minimalistic clock for displaying time in the terminal.
    cava         # Audio visualizer for the terminal, showing sound levels as bars.
    figlet       # Create large letters and banners from text in the terminal.
  ];
}
