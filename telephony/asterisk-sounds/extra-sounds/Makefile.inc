ASND_NAME =	asterisk-extra-sounds
ASND_TAG =	asterisk-extra
ASND_DESC =	additional ${ASND_LANGNAME} sound files for Asterisk (${ASND_CODEC})
ASND_LANGS =	en en_GB fr
ASND_VER =	1.5.2
REVISION =	1
MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# CC-BY-SA
PERMIT_PACKAGE =	Yes

PKGDIR =        ${.CURDIR}/../pkg
PLIST =         ${PKGDIR}/PLIST-${ASND_LANG}

.include "../asterisk-sounds.inc"

post-install:
	cd ${PREFIX}/${ASND_INST} && for i in \
	    CHANGES-asterisk-extra-${ASND_LANG}-${ASND_VER} \
	    CREDITS-asterisk-extra-${ASND_LANG}-${ASND_VER} \
	    LICENSE-asterisk-extra-${ASND_LANG}-${ASND_VER} \
	    extra-sounds-${ASND_LANG}.txt; \
	do [ -f $$i ] && mv $$i $$i-${ASND_CODEC}; done
