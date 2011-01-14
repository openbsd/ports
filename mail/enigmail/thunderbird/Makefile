# $OpenBSD: Makefile,v 1.4 2011/01/14 22:58:49 landry Exp $

COMMENT =	GnuPG extension for Thunderbird

VERSION =	1.1.2
REVISION =	2

# must be in sync with SO_VERSION in
# mail/mozilla-thunderbird
SHARED_LIBS =	enigmime	17.1 \
		ipc		17.1

MOZAPP_PKGPATH =	mail/mozilla-thunderbird
MOZAPP_DIR =		mozilla-thunderbird
MOZAPP_BRANCH =		1.9.2

ENIGMAIL_XPI =	${DISTNAME}-openbsd-${GNU_ARCH}.xpi

.include <bsd.port.mk>
