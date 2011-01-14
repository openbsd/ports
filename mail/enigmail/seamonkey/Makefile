# $OpenBSD: Makefile,v 1.4 2011/01/14 22:58:49 landry Exp $

COMMENT =	GnuPG extension for Seamonkey

VERSION =	1.0.1
PKGNAME =	enigmail-seamonkey-${VERSION}
REVISION =	4

# must be in sync with SO_VERSION in
# www/seamonkey
SHARED_LIBS =	enigmime	16.1

MOZAPP_PKGPATH =	www/seamonkey
MOZAPP_DIR =		seamonkey
MOZAPP_BRANCH =		1.9.1

ENIGMAIL_XPI=	${DISTNAME:S/.1//}-openbsd-${GNU_ARCH}.xpi

.include <bsd.port.mk>
