# $OpenBSD: Makefile.inc,v 1.15 2020/08/01 11:23:05 sthen Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-extra-sounds
MODAS_TAG =	asterisk-extra
MODAS_DESC =	additional ${MODAS_LANGNAME} sound files for Asterisk (${MODAS_CODEC})
MODAS_LANGS =	en en_GB fr
MODAS_VER =	1.5.2
REVISION =	0
MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# CC-BY-SA
PERMIT_PACKAGE =	Yes

PKGDIR =        ${.CURDIR}/../pkg
PLIST =         ${PKGDIR}/PLIST-${MODAS_LANG}

post-install:
	cd ${PREFIX}/${MODAS_INST} && for i in \
	    CHANGES-asterisk-extra-${MODAS_LANG}-${MODAS_VER} \
	    CREDITS-asterisk-extra-${MODAS_LANG}-${MODAS_VER} \
	    LICENSE-asterisk-extra-${MODAS_LANG}-${MODAS_VER} \
	    extra-sounds-${MODAS_LANG}.txt; \
	do [ -f $$i ] && mv $$i $$i-${MODAS_CODEC}; done
