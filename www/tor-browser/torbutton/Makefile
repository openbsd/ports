# $OpenBSD: Makefile,v 1.14 2019/05/01 17:36:30 landry Exp $

ADDON_NAME =		torbutton
V =			2.0.11
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
