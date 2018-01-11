# $OpenBSD: Makefile,v 1.8 2018/01/11 19:27:03 rpe Exp $

COMMENT =		POP3 daemon with POP3S and STARTTLS extensions

VERSION =		1.0.2
GH_ACCOUNT =		snimmagadda
GH_PROJECT =		pop3d
GH_TAGNAME =		v${VERSION}
DISTNAME =		${GH_PROJECT}-${VERSION}
CATEGORIES =		mail
REVISION =		0

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
