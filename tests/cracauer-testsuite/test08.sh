#!./testshell

echo 'Test 8: Start a child that is to be interrupted by SIGINT.'
echo '        The shell should not continue with the script'

if [ $ZSH_VERSION ] ; then
    source lib.sh
else
    . lib.sh
fi

echo
echo 'Should exit immedeatly after you break cat by SIGINT'
echo cat
cat
sleep 1
echo 'If you see this, you have a problem'
sleep 1
echo 'If you see this, you have even more problems'
