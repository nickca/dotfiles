#/bin/bash
for i in `ls ~/.vim/pack/plugins/start`; do
    cd ~/.vim/pack/plugins/start/$i
    git submodule update --remote --merge
    git commit
    cd ..
done
