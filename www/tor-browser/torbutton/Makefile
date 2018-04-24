# $OpenBSD: Makefile,v 1.12 2018/04/24 18:06:30 sthen Exp $

ADDON_NAME =		torbutton
V =			1.9.8.6
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
