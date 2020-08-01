# $OpenBSD: Makefile.inc,v 1.17 2020/08/01 11:23:05 sthen Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-core-sounds
MODAS_TAG =	asterisk-core
MODAS_DESC =	core ${MODAS_LANGNAME} sound files for Asterisk (${MODAS_CODEC})
MODAS_LANGS =	en en_AU en_GB en_NZ es fr it ja ru sv
MODAS_VER ?=	1.6.1
REVISION =	0
MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# CC-BY-SA
PERMIT_PACKAGE =	Yes

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
