#!/usr/bin/env bash

VERSION=`git describe --abbrev=0 --tags`
NUMBER_VERSION=$(echo $VERSION | sed -e 's/v//g')
NEW_TAG=$((NUMBER_VERSION+1))
NEW_TAG=$(echo "v$NEW_TAG")

commits=(
    "add primeiro commit [$NEW_TAG]"
    "style: corrige indent"
    "style(dhushd): corrige indent"
    "corrige bug estranho hurr"
    "chore: add bla"
    "chore(dhushd): add bla"
    "refactor: add y"
    "refactor(dhushd): add outro y"
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
