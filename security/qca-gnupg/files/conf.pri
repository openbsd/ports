# $OpenBSD: conf.pri,v 1.3 2016/03/07 14:29:02 zhuk Exp $
# qconf

CONFIG += release crypto

target.path = ${MODQT4_LIBDIR}/plugins/crypto
INSTALLS += target
