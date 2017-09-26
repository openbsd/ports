# $OpenBSD: Makefile,v 1.9 2017/09/26 19:55:17 sthen Exp $

ADDON_NAME =		torbutton
V =			1.9.7.6
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
