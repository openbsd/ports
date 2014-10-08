# $OpenBSD: Makefile,v 1.6 2014/10/08 02:10:50 sthen Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-moh-opsound
MODAS_TAG =	asterisk-extra
MODAS_DESC =	opsound music-on-hold for Asterisk (${MODAS_CODEC})
MODAS_VER =	2.03
REVISION =	2
MODAS_INST =	share/asterisk/moh
MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes

FLAVOR ?= wav

.include <bsd.port.mk>
