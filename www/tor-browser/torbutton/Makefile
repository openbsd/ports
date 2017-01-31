# $OpenBSD: Makefile,v 1.4 2017/01/31 13:48:18 landry Exp $

ADDON_NAME =		torbutton
V =			1.9.6.12
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
