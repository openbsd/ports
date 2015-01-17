# $OpenBSD: Makefile,v 1.5 2015/01/17 22:14:06 jturner Exp $

COMMENT =		POP3 daemon with POP3S and STARTTLS extensions

VERSION =		1.0.1
GH_ACCOUNT =		snimmagadda
GH_PROJECT =		pop3d
GH_TAGNAME =		v${VERSION}
GH_COMMIT =		0a132f05d8f0a74ba85a4cc59b755bc20a2a34a8
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
