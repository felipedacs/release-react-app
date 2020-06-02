#!/usr/bin/env bash

VERSION=`git describe --abbrev=0 --tags`
echo $VERSION

NUMBER_VERSION=$(echo $VERSION | sed -e 's/v//g')
echo $NUMBER_VERSION

NEW_TAG=$((NUMBER_VERSION+1))
echo $NEW_TAG

NEW_TAG=$(echo "v$NEW_TAG")
echo $NEW_TAG

# sugestões:
# https://dev.to/folke/emojify-your-conventional-commits-with-devmoji-4b3l
# https://gitmoji.carloscuesta.me/
# https://gist.github.com/parmentf/035de27d6ed1dce0b36a
# https://github.com/dannyfritz/commit-message-emoji
# https://github.com/cooperka/emoji-commit-messages
# https://robinpokorny.github.io/git3moji/

commits=(
    "add primeiro commit [$NEW_TAG]"
    "corrige bug estranho hurr"
    "chore: add bla"
    "chore(dhushd): add bla"
    "improve: cria x"
    "improve(dhushd): cria x"
    "test: add opt"
    "test(dhushd): add blo"
    "ci: add dep"
    "docker(dhushd): muda dependencia"
    "feat: add funcionalidade"
    "feat(dhushd): add outra funcionalidade"
    "fix: remove x"
    "fix(dhushd): remove outro x"
    "docs: add funcionalidade"
    "docs(dhushd): add outra funcionalidade"
    "add ultimo commit [$NEW_TAG]"
)

for m in "${commits[@]}"
do
    echo $m > increment.txt
    git add -A
    git commit -s -m "$m"
done


git tag $NEW_TAG
git push origin master --tags

echo "                                         "
echo "                   |ZZzzz                "
echo "                   |                     "
echo "                   |                     "
echo "      |ZZzzz      /^\            |ZZzzz  "
echo "      |          |~~~|           |       "
echo "      |        |-     -|        / \      "
echo "     /^\       |[]+    |       |^^^|     "
echo "  |^^^^^^^|    |    +[]|       |   |     "
echo "  |    +[]|/\/\/\/\^/\/\/\/\/|^^^^^^^|   "
echo "  |+[]+   |~~~~~~~~~~~~~~~~~~|    +[]|   "
echo "  |       |  []   /^\   []   |+[]+   |   "
echo "  |   +[]+|  []  || ||  []   |   +[]+|   "
echo "  |[]+    |      || ||       |[]+    |   "
echo "  |_______|------------------|_______|   "
echo "                                         "
echo "                                         "
echo "  You have just committed and tagged $NEW_TAG"
# THANKS: https://stackoverflow.com/a/36790066
