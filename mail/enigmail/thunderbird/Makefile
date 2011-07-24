# $OpenBSD: Makefile,v 1.6 2011/07/24 07:35:14 landry Exp $

COMMENT =	GnuPG extension for Thunderbird

VERSION =	1.2

# must be in sync with SO_VERSION in
# mail/mozilla-thunderbird
SHARED_LIBS =	enigmime	18.0 \
		ipc		18.0

MOZAPP_PKGSTEM =	thunderbird->=5.0
MOZAPP_PKGPATH =	mail/mozilla-thunderbird
MOZAPP_DIR =		lib/thunderbird-5.0
MOZAPP_BRANCH =		miramar

ENIGMAIL_XPI =	${DISTNAME}-openbsd-${GNU_ARCH}.xpi

.include <bsd.port.mk>
