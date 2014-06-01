# $OpenBSD: Makefile,v 1.2 2014/06/01 15:11:55 jturner Exp $

COMMENT =		POP3 daemon with POP3S and STARTTLS extensions

VERSION =		1.0
DISTNAME =		pop3d-${VERSION}
REVISION =		0
DISTFILES =		${DISTNAME}{v${VERSION}}.tar.gz
CATEGORIES =		mail

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://github.com/snimmagadda/pop3d/
MASTER_SITES =		https://github.com/snimmagadda/pop3d/archive/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto event ssl util

MAKE_FLAGS =		BINDIR="${PREFIX}/sbin" \
			MANDIR="${PREFIX}/man/man" \
			DEBUG=""

NO_TEST =		Yes

.include <bsd.port.mk>
