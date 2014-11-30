# $OpenBSD: Makefile,v 1.3 2014/11/30 05:41:34 brad Exp $
COMMENT =	library for resource constrained project scheduling
CATEGORIES =	productivity
DISTNAME =	librcps-0.3
REVISION =	0
HOMEPAGE =	http://www.librcps.org/

SHARED_LIBS =	rcps		0.0

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MASTER_SITES =		${HOMEPAGE}

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

# looks like upstream have one but forgot to actually add it
NO_TEST =		Yes

.include <bsd.port.mk>
