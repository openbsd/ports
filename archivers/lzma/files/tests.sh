#!/bin/sh

# Exit on error and create files securely:
set -eC

# Set some variables; look for md5/md5sum
LZMA_CMD="src/lzma/lzma -5"
LZMADEC="src/lzmadec/lzmadec"
MD5_CMD=md5

# Remove old tempory files:
rm -f testfile.*

# Create a few files to be compressed:
echo "Creating test files..."
$MD5_CMD < /dev/null | cut -f 1 -d ' ' > testfile.1a
for I in a b c d e f g h i j k l m n o p q r s t u v w x y z \
    t h i s i s a f u n n y w a y t o c r e a t e \
    s o m e d a t a f o r q u i c k c o m p r e s s i o n \
    t e s t a l t o u g h t p r o b a b l y n o t t h e \
    m o s t e f f i c i e n t a n d f a s t e s t \
    a b c d e f g h i j k l m n o p q r s t u v w x y z; do
  $MD5_CMD < testfile.1a | cut -f 1 -d ' ' >> testfile.1b
  $MD5_CMD < testfile.1b | cut -f 1 -d ' ' >> testfile.1a
done
# Empty file:
cat /dev/null > testfile.2
# Four megabytes of zero:
dd if=/dev/zero of=testfile.3 bs=1024 count=4096 2> /dev/null

# Compress:
echo "Compressing..."
for I in 1a 1b 2 3; do
    cat testfile.$I | $LZMA_CMD > testfile.$I.lzma
done

# Decompress:
echo "Decompressing..."
for I in 1a 1b 2 3; do
    $LZMA_CMD -d < testfile.$I.lzma > testfile.$I.unlzma
    $LZMADEC < testfile.$I.lzma > testfile.$I.lzmadec
done

md5_test() {
    if [ "$($MD5_CMD < "$1" | cut -f 1 -d ' ')" = "$2" ]; then
	echo "* $1: OK"
    else
	echo "* $1: FAILED"
    fi
}

md5_cmp() {
    if [ "$($MD5_CMD < "$1")" = "$($MD5_CMD < "$2")" ]; then
	echo "* $1: OK"
    else
	echo "* $1: FAILED"
    fi
}

# Compare MD5 sums:
echo "Verifying:"
md5_test testfile.1a.lzma 3d156e6cde4d7f4887b1f2fe31ea360a
md5_test testfile.1b.lzma 6d61f2c314fe76318a93c0850d55339f
md5_test testfile.2.lzma dfc087b4c46079bcc505ff6136fed30f
md5_test testfile.3.lzma 641d6634a973aca23b86419c316fcd18
for I in 1a 1b 2 3; do
    md5_cmp testfile.$I.unlzma testfile.$I
    md5_cmp testfile.$I.lzmadec testfile.$I
done
