# $OpenBSD: Makefile,v 1.11 2018/01/10 13:22:25 sthen Exp $

ADDON_NAME =		torbutton
V =			1.9.7.10
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
