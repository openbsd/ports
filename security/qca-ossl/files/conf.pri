# qconf

LIBS += -lssl -lcrypto

CONFIG += release crypto

target.path = ${MODQT4_LIBDIR}/plugins/crypto
INSTALLS += target
