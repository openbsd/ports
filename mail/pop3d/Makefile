# $OpenBSD: Makefile,v 1.3 2014/07/10 11:06:37 rpe Exp $

COMMENT =		POP3 daemon with POP3S and STARTTLS extensions

VERSION =		1.0
GH_ACCOUNT =		snimmagadda
GH_PROJECT =		pop3d
GH_TAGNAME =		v${VERSION}
GH_COMMIT =		d338a534640e854928c6b5e78e7b41aa4c08b0d7
DISTNAME =		${GH_PROJECT}-${VERSION}
REVISION =		0
CATEGORIES =		mail

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://github.com/snimmagadda/pop3d/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto event ssl util

MAKE_FLAGS =		BINDIR="${PREFIX}/sbin" \
			MANDIR="${PREFIX}/man/man" \
			DEBUG=""

NO_TEST =		Yes

.include <bsd.port.mk>
