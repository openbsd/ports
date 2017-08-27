# $OpenBSD: Makefile,v 1.8 2017/08/27 08:54:08 sthen Exp $

ADDON_NAME =		torbutton
V =			1.9.7.5
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
