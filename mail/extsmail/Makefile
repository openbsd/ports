# $OpenBSD: Makefile,v 1.18 2020/02/04 11:28:03 edd Exp $

COMMENT =		robust sending of e-mail via external commands

DISTNAME =		extsmail-2.4
CATEGORIES =		mail

HOMEPAGE =		https://tratt.net/laurie/src/extsmail/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# BSD / MIT
PERMIT_PACKAGE =	Yes

# uses pledge(2)
WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}releases/

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
