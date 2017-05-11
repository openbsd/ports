# $OpenBSD: Makefile,v 1.6 2017/05/11 01:26:37 danj Exp $

ADDON_NAME =		torbutton
V =			1.9.6.14
REVISION =		0
COMMENT =		Tor Browser add-on for configuring Tor Browser settings
GUID =			torbutton@torproject.org
PKGNAME =		${TB_NAME}

do-build:
	cd ${WRKSRC} && ./makexpi.sh

.include <bsd.port.mk>
