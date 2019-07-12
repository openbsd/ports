# $OpenBSD: Makefile,v 1.16 2019/07/12 20:47:27 sthen Exp $

COMMENT =		robust sending of e-mail via external commands

DISTNAME =		extsmail-2.0
CATEGORIES =		mail

HOMEPAGE =		http://tratt.net/laurie/src/extsmail/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# BSD / MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}releases/

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

WANTLIB =		c

# To make the build honour CFLAGS. Will be fixed next release.
MAKE_FLAGS +=		CFLAGS="${CFLAGS} -std=c99"

.include <bsd.port.mk>
