#!/usr/bin/env sh

DELAY=5

echo -e "Let us test how big of a difference C makes instead of python"
echo -e "  for a simple hello world program."

sleep $DELAY

bat ./hello-world.c

# Run single test
echo -e "\nThe C version runs in..."
time ./hello-world

sleep $DELAY

bat ./hello-world.py

echo -e "\nThe python version runs in..."
time ./hello-world.py

sleep $DELAY

echo -e "\nBut maybe that was a fluke? Let's do that a thousand times\n"
echo -e "  and add see how long it takes then.\n"

sleep $DELAY

sed -n 36,40p $0 | bat -l bash

sleep $DELAY

# Run a thousand tests

echo -e "\nThe C version runs in..."
time for i in {0..1000}; do ./hello-world > /dev/null 2>&1; done

echo -e "\nThe python version runs in..."
time for i in {0..1000}; do ./hello-world.py > /dev/null 2>&1; done

sleep $DELAY

echo -e "\nNotice that here, the /usb/bin/env sh 'for loop' in the code\n"
echo -e "  does add a fair bit of extra time.\n"

sleep $DELAY

echo -e "\n...I wonder how fast /usr/bin/env sh is compared...\n"

sleep $DELAY

echo "###   SH SCRIPT   ###"
sed -n 59,60p $0 | bat -l bash
echo "### SH SCRIPT END ###"

sleep $DELAY

echo -e "\nThe sh version runs in..."
time for i in {0..1000}; do echo "Hello, World!\n" > /dev/null 2>&1; done

sleep $DELAY

echo -e "\nOk... that was suprisingly quick...\n"

sleep $DELAY

echo -e "\nMaybe we should try not to use the shell for loop?\n"

sleep $DELAY

bat hello-world-1000.c

echo -e "\nThe C version runs in..."
time $(./hello-world-1000 > /dev/null >&1)

sleep $DELAY

bat hello-world-1000.py

echo -e "\nThe python version runs in..."
time $(./hello-world-1000.py > /dev/null >&1)

sleep $DELAY

echo -e "\nThat did make it a lot faster for both hu?\n"

sleep $DELAY

echo -e "\nBut what about all the fluff, maybe that's causing issues?\n"

sleep $DELAY

bat hello-world-1000-bare.c

echo -e "\nThe C version runs in..."
time $(./hello-world-1000-bare > /dev/null >&1)

sleep $DELAY

bat hello-world-1000-bare.py

echo -e "\nThe python version runs in..."
time $(python3 hello-world-1000-bare.py > /dev/null >&1)

sleep $DELAY

echo -e "\nLet's stop here. To run this last bit we did...\n"

sed -n 92,104p $0 | bat -l bash

sleep $(($DELAY/2))

echo -e "\nPython is slower than C, for this case...\n"

sleep $(($DELAY/2))

echo -e "\nBut this could be mitigated...\n"

sleep $(($DELAY/2))

echo -e "\nWith maybe numpy, cython, or numba!\n"

sleep $(($DELAY/2))

echo -e "\nOther hints for python performance:\n"
echo "https://wiki.python.org/moin/PythonSpeed/PerformanceTips\n\n"

sleep $(($DELAY/2))

echo -e "\nConclusion? C is faster, no doubt.\n"

sleep $(($DELAY/5))

echo -e "\nBut well written python can be fast.\n"

sleep $(($DELAY/5))

echo -e "\nSo the problem is not python...\n"

sleep $(($DELAY/5))

echo -e "\nIt's slow python\n"

sleep $(($DELAY/5))

echo -e "\n...But C will probably always be faster...\n"

sleep $DELAY

echo -e "\n!!!IF WRITTEN WELL!!!\n"

sleep $DELAY

echo -e "\nThis experiment: https://github.com/cafkafk/c-vs-python\n"
