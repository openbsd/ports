# $OpenBSD: Makefile,v 1.12 2014/03/14 11:28:59 edd Exp $

COMMENT =		robust sending of e-mail to external commands

DISTNAME =		extsmail-1.7
CATEGORIES =		mail

HOMEPAGE =		http://tratt.net/laurie/src/extsmail/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# BSD / MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}releases/

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

WANTLIB =		c

# To make the build honour CFLAGS. Will be fixed next release.
MAKE_FLAGS +=		CFLAGS="${CFLAGS} -std=c99"

.include <bsd.port.mk>
