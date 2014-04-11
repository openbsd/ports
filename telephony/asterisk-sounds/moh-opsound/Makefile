# $OpenBSD: Makefile,v 1.5 2014/04/11 20:19:57 naddy Exp $

REVISION =	1

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-moh-opsound
MODAS_TAG =	asterisk-extra
MODAS_DESC =	opsound music-on-hold for Asterisk (${MODAS_CODEC})
MODAS_VER =	2.03
MODAS_INST =	share/asterisk/moh

# CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes

FLAVOR ?= wav

.include <bsd.port.mk>
