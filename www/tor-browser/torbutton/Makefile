# $OpenBSD: Makefile,v 1.1.1.1 2016/11/13 21:15:43 landry Exp $

ADDON_NAME =		torbutton
V =			1.9.5.7
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
