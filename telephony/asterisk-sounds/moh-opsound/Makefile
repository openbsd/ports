# $OpenBSD: Makefile,v 1.1 2012/09/25 21:58:47 sthen Exp $

MODULES +=	telephony/asterisk-sounds
MODAS_NAME =	asterisk-moh-opsound
MODAS_TAG =	asterisk-extra
MODAS_DESC =	opsound music-on-hold for Asterisk (${MODAS_CODEC})
MODAS_VER =	2.03
MODAS_INST =	share/asterisk/moh

# CC-BY-SA
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

FLAVOR ?= wav

.include <bsd.port.mk>
