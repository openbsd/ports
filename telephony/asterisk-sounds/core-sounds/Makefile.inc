# $OpenBSD: Makefile.inc,v 1.5 2013/05/16 21:53:32 sthen Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-core-sounds
MODAS_TAG =	asterisk-core
MODAS_DESC =	core ${MODAS_LANGNAME} sound files for Asterisk (${MODAS_CODEC})
MODAS_LANGS =	en en_AU es fr it ru
MODAS_VER =	1.4.24

# CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes

PKGDIR =        ${.CURDIR}/../pkg
PLIST =         ${PKGDIR}/PLIST-${MODAS_LANG}
CHECKSUM_FILE = ${.CURDIR}/../distinfo

post-install:
	cd ${PREFIX}/${MODAS_INST} && for i in \
	    CHANGES-asterisk-core-${MODAS_LANG}-${MODAS_VER} \
	    CREDITS-asterisk-core-${MODAS_LANG}-${MODAS_VER} \
	    LICENSE-asterisk-core-${MODAS_LANG}-${MODAS_VER} \
	    core-sounds-${MODAS_LANG}.txt; \
	do mv $$i $$i-${MODAS_CODEC}; done
