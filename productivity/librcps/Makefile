# $OpenBSD: Makefile,v 1.2 2014/07/09 14:56:53 landry Exp $
COMMENT =	library for resource constrained project scheduling
CATEGORIES =	productivity
DISTNAME =	librcps-0.3
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
