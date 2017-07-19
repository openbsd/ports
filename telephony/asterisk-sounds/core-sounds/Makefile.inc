# $OpenBSD: Makefile.inc,v 1.14 2017/07/19 15:07:38 sthen Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-core-sounds
MODAS_TAG =	asterisk-core
MODAS_DESC =	core ${MODAS_LANGNAME} sound files for Asterisk (${MODAS_CODEC})
MODAS_LANGS =	en en_AU en_GB es fr it ja ru sv
MODAS_VER ?=	1.6
MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes

PKGDIR =        ${.CURDIR}/../pkg
PLIST =         ${PKGDIR}/PLIST-${MODAS_LANG}
#CHECKSUM_FILE = ${.CURDIR}/../distinfo

post-install:
	-cd ${PREFIX}/${MODAS_INST} && \
	for i in CHANGES CREDITS LICENSE; do mv \
	    $$i-asterisk-core-${MODAS_LANG}-1.4.27 \
	    $$i-asterisk-core-${MODAS_LANG}-1.5; done; \
	for i in \
	    CHANGES-asterisk-core-${MODAS_LANG}-${MODAS_VER} \
	    CREDITS-asterisk-core-${MODAS_LANG}-${MODAS_VER} \
	    LICENSE-asterisk-core-${MODAS_LANG}-${MODAS_VER} \
	    core-sounds-${MODAS_LANG}.txt \
	    core-sounds-${MODAS_LANG}; do mv $$i $$i-${MODAS_CODEC}; done
