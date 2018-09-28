# $OpenBSD: Makefile,v 1.13 2018/09/28 14:54:26 sthen Exp $

ADDON_NAME =		torbutton
V =			2.0.7
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
