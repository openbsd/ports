# $OpenBSD: Makefile,v 1.2 2010/08/02 08:45:32 landry Exp $

COMMENT =	GnuPG extension for Seamonkey

VERSION =	1.0.1
PKGNAME =	enigmail-seamonkey-${VERSION}
REVISION =	2

# must be in sync with SO_VERSION in
# www/seamonkey
SHARED_LIBS =	enigmime	16.0

MOZAPP_PKGPATH =	www/seamonkey
MOZAPP_DIR =		seamonkey
MOZAPP_BRANCH =		1.9.1

ENIGMAIL_XPI=	${DISTNAME:S/.1//}-openbsd-${GNU_ARCH}.xpi

.include <bsd.port.mk>
