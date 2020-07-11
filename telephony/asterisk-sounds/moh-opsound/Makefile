# $OpenBSD: Makefile,v 1.8 2020/07/11 22:54:40 sthen Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-moh-opsound
MODAS_TAG =	asterisk-extra
MODAS_DESC =	opsound music-on-hold for Asterisk (${MODAS_CODEC})
MODAS_VER =	2.03
REVISION =	3
MODAS_INST =	share/asterisk/moh
MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# CC-BY-SA
PERMIT_PACKAGE =	Yes

FLAVOR ?= wav

.include <bsd.port.mk>
