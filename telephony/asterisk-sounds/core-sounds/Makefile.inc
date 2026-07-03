ASND_NAME =	asterisk-core-sounds
ASND_TAG =	asterisk-core
ASND_DESC =	core ${ASND_LANGNAME} sound files for Asterisk (${ASND_CODEC})
ASND_LANGS =	en en_AU en_GB en_NZ es fr it ja ru sv
ASND_VER ?=	1.6.1
REVISION =	1
MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# CC-BY-SA
PERMIT_PACKAGE =	Yes

PKGDIR =        ${.CURDIR}/../pkg
PLIST =         ${PKGDIR}/PLIST-${ASND_LANG}

.include "../asterisk-sounds.inc"

post-install:
	-cd ${PREFIX}/${ASND_INST} && \
	for i in CHANGES CREDITS LICENSE; do mv \
	    $$i-asterisk-core-${ASND_LANG}-1.4.27 \
	    $$i-asterisk-core-${ASND_LANG}-1.5; done; \
	for i in \
	    CHANGES-asterisk-core-${ASND_LANG}-${ASND_VER} \
	    CREDITS-asterisk-core-${ASND_LANG}-${ASND_VER} \
	    LICENSE-asterisk-core-${ASND_LANG}-${ASND_VER} \
	    core-sounds-${ASND_LANG}.txt \
	    core-sounds-${ASND_LANG}; do mv $$i $$i-${ASND_CODEC}; done
