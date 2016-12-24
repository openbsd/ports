# $OpenBSD: Makefile,v 1.3 2016/12/24 20:15:06 landry Exp $

ADDON_NAME =		torbutton
V =			1.9.5.13
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
