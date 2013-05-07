# $OpenBSD: conf.pri,v 1.2 2013/05/07 07:00:20 jasper Exp $
# qconf

CONFIG += release crypto

target.path = ${WRKINST}${MODQT4_LIBDIR}/plugins/crypto
INSTALLS += target
