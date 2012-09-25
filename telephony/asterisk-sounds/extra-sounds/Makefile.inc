# $OpenBSD: Makefile.inc,v 1.1 2012/09/25 21:58:46 sthen Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-extra-sounds
MODAS_TAG =	asterisk-extra
MODAS_DESC =	additional ${MODAS_LANGNAME} sound files for Asterisk (${MODAS_CODEC})
MODAS_LANGS =	en fr
MODAS_VER =	1.4.11

# CC-BY-SA
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

PKGDIR =        ${.CURDIR}/../pkg
PLIST =         ${PKGDIR}/PLIST-${MODAS_LANG}
CHECKSUM_FILE = ${.CURDIR}/../distinfo
