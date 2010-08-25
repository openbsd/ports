# $OpenBSD: Makefile,v 1.3 2010/08/25 06:34:50 ajacoutot Exp $

COMMENT =	GnuPG extension for Thunderbird

VERSION =	1.1.2
REVISION =	1

# must be in sync with SO_VERSION in
# mail/mozilla-thunderbird
SHARED_LIBS =	enigmime	17.0 \
		ipc		17.0

MOZAPP_PKGPATH =	mail/mozilla-thunderbird
MOZAPP_DIR =		mozilla-thunderbird
MOZAPP_BRANCH =		1.9.2

ENIGMAIL_XPI =	${DISTNAME}-openbsd-${GNU_ARCH}.xpi

.include <bsd.port.mk>
