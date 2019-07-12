# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:58 sthen Exp $
COMMENT =	library for resource constrained project scheduling
CATEGORIES =	productivity
DISTNAME =	librcps-0.3
REVISION =	0
HOMEPAGE =	http://www.librcps.org/

SHARED_LIBS =	rcps		0.0

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MASTER_SITES =		${HOMEPAGE}

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

# looks like upstream have one but forgot to actually add it
NO_TEST =		Yes

.include <bsd.port.mk>
