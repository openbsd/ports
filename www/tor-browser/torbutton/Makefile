# $OpenBSD: Makefile,v 1.2 2016/12/02 08:18:19 landry Exp $

ADDON_NAME =		torbutton
V =			1.9.5.12
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
