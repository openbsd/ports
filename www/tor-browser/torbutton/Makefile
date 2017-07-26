# $OpenBSD: Makefile,v 1.7 2017/07/26 20:50:39 sthen Exp $

ADDON_NAME =		torbutton
V =			1.9.7.4
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
