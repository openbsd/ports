# $OpenBSD: Makefile.inc,v 1.8 2014/04/09 00:41:03 sthen Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-extra-sounds
MODAS_TAG =	asterisk-extra
MODAS_DESC =	additional ${MODAS_LANGNAME} sound files for Asterisk (${MODAS_CODEC})
MODAS_LANGS =	en en_GB fr
MODAS_VER =	1.4.14
REVISION =	0

# CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes

PKGDIR =        ${.CURDIR}/../pkg
PLIST =         ${PKGDIR}/PLIST-${MODAS_LANG}
CHECKSUM_FILE = ${.CURDIR}/../distinfo

post-install:
	-mv ${PREFIX}/${MODAS_INST}/CREDITS-core-extra-fr.txt \
	    ${PREFIX}/${MODAS_INST}/CREDITS-asterisk-extra-fr-${MODAS_VER}
	cd ${PREFIX}/${MODAS_INST} && for i in \
	    CHANGES-asterisk-extra-${MODAS_LANG}-${MODAS_VER} \
	    CREDITS-asterisk-extra-${MODAS_LANG}-${MODAS_VER} \
	    LICENSE-asterisk-extra-${MODAS_LANG}-${MODAS_VER} \
	    extra-sounds-${MODAS_LANG}.txt; \
	do [ -f $$i ] && mv $$i $$i-${MODAS_CODEC}; done
