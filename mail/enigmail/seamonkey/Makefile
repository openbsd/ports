# $OpenBSD: Makefile,v 1.5 2011/07/24 07:35:14 landry Exp $

COMMENT =	GnuPG extension for Seamonkey

VERSION =	1.2
PKGNAME =	enigmail-seamonkey-${VERSION}

# must be in sync with SO_VERSION in
# www/seamonkey
SHARED_LIBS =	enigmime	18.0 \
		ipc		18.0

MOZAPP_PKGSTEM =	seamonkey->=2.2
MOZAPP_PKGPATH =	www/seamonkey
MOZAPP_DIR =		lib/seamonkey-2.2
MOZAPP_BRANCH =		release

ENIGMAIL_XPI =	${DISTNAME}-openbsd-${GNU_ARCH}.xpi

.include <bsd.port.mk>
