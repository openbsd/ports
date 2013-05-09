# $OpenBSD: Makefile,v 1.3 2013/05/09 07:33:17 sthen Exp $

REVISION =	0

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
