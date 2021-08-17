# $OpenBSD: Makefile,v 1.19 2021/08/17 14:28:58 edd Exp $

COMMENT =		robust sending of e-mail via external commands

DISTNAME =		extsmail-2.5
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
