# $OpenBSD: Makefile.inc,v 1.2 2013/03/11 11:41:33 espie Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-core-sounds
MODAS_TAG =	asterisk-core
MODAS_DESC =	core ${MODAS_LANGNAME} sound files for Asterisk (${MODAS_CODEC})
MODAS_LANGS =	en en_AU es fr ru
MODAS_VER =	1.4.22

# CC-BY-SA
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

PKGDIR =        ${.CURDIR}/../pkg
PLIST =         ${PKGDIR}/PLIST-${MODAS_LANG}
CHECKSUM_FILE = ${.CURDIR}/../distinfo
