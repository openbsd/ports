# $OpenBSD: Makefile,v 1.15 2019/05/09 06:31:18 landry Exp $

ADDON_NAME =		torbutton
V =			2.0.13
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
