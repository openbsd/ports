# $OpenBSD: Makefile,v 1.5 2017/04/12 18:46:52 landry Exp $

ADDON_NAME =		torbutton
V =			1.9.6.14
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
