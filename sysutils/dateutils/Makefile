# $OpenBSD: Makefile,v 1.7 2021/08/31 15:19:15 fcambus Exp $

COMMENT =		tools to fiddle with dates and times

DISTNAME =		dateutils-0.4.9

CATEGORIES =		sysutils

HOMEPAGE =		https://www.fresse.org/dateutils/

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =		https://bitbucket.org/hroptatyr/dateutils/downloads/
EXTRACT_SUFX =		.tar.xz

CONFIGURE_STYLE =	gnu

# uses wordexp
NO_TEST =		Yes

.include <bsd.port.mk>
