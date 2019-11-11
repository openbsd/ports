# $OpenBSD: Makefile,v 1.4 2019/11/11 20:58:49 fcambus Exp $

COMMENT =		tools to fiddle with dates and times

DISTNAME =		dateutils-0.2.7
REVISION =		1

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
