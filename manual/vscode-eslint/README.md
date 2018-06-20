# <img src="https://cdn.rawgit.com/bbtsoftware/chocolatey-packages/d8c9bacbea3fd9ad9824780608620b218b47e683/icons/vscode-eslint.png" width="48" height="48"/> [vscode-eslint](https://chocolatey.org/packages/vscode-eslint)

Integrates ESLint JavaScript into VS Code.

Integrates [ESLint](http://eslint.org/) into VS Code. If you are new to ESLint check the [documentation](http://eslint.org/).

The extension uses the ESLint library installed in the opened workspace folder.
If the folder doesn't provide one the extension looks for a global install version.
If you haven't installed ESLint either locally or globally do so by running `npm install eslint` in the workspace folder for a local install or `npm install -g eslint` for a global install.

On new folders you might also need to create a `.eslintrc` configuration file.
You can do this by either using the VS Code command `Create ESLint` configuration or by running the eslint command in a terminal.
If you have installed eslint globally (see above) then run [eslint --init](http://eslint.org/docs/user-guide/command-line-interface) in a terminal.
If you have installed eslint locally then run [.\node_modules\.bin\eslint --init](http://eslint.org/docs/user-guide/command-line-interface) under Windows and [./node_modules/.bin/eslint --init](http://eslint.org/docs/user-guide/command-line-interface) under Linux and Mac.

## Notes

* The package always installs the latest version of the extension.
  The version of the Chocolatey package reflects not the version of the extension.
