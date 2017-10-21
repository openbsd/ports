# $OpenBSD: Makefile,v 1.10 2017/10/21 20:18:45 sthen Exp $

ADDON_NAME =		torbutton
V =			1.9.7.7
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
