# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:41 sthen Exp $

COMMENT =		tools to fiddle with dates and times

DISTNAME =		dateutils-0.2.7
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		http://www.fresse.org/dateutils/

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =		https://bitbucket.org/hroptatyr/dateutils/downloads/
EXTRACT_SUFX =		.tar.xz

CONFIGURE_STYLE =	gnu

# uses wordexp
NO_TEST =		Yes

.include <bsd.port.mk>
