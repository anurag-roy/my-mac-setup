ALL_EXTENSIONS="aaron-bond.better-comments
anuragroy.fidel
astro-build.astro-vscode
bierner.markdown-preview-github-styles
denoland.vscode-deno
eamodio.gitlens
esbenp.prettier-vscode
GitHub.codespaces
GitHub.copilot-nightly
ms-vscode-remote.remote-ssh
ms-vscode-remote.remote-ssh-edit
ms-vscode.remote-explorer
PKief.material-icon-theme
redhat.vscode-yaml
sibiraj-s.vscode-scss-formatter
svelte.svelte-vscode";

echo $ALL_EXTENSIONS | xargs -L 1 code-insiders --install-extension