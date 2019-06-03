# $OpenBSD: Makefile,v 1.7 2019/06/03 16:06:57 sthen Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-moh-opsound
MODAS_TAG =	asterisk-extra
MODAS_DESC =	opsound music-on-hold for Asterisk (${MODAS_CODEC})
MODAS_VER =	2.03
REVISION =	2
MODAS_INST =	share/asterisk/moh
MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# CC-BY-SA
PERMIT_PACKAGE =	Yes

FLAVOR ?= wav

.include <bsd.port.mk>
