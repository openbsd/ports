# $OpenBSD: Makefile,v 1.2 2015/05/22 11:31:18 ajacoutot Exp $

COMMENT =		tools to fiddle with dates and times

DISTNAME =		dateutils-0.2.7
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		http://www.fresse.org/dateutils/

# BSD 3-clause
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		https://bitbucket.org/hroptatyr/dateutils/downloads/
EXTRACT_SUFX =		.tar.xz

CONFIGURE_STYLE =	gnu

# uses wordexp
NO_TEST =		Yes

.include <bsd.port.mk>
