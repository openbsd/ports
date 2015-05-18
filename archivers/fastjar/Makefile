# $OpenBSD: Makefile,v 1.20 2015/05/18 11:29:37 jasper Exp $

COMMENT =	Sun JDK's jar command written entirely in C

DISTNAME =	fastjar-0.94
CATEGORIES =	archivers

HOMEPAGE =	http://fastjar.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		c z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fastjar/}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

post-extract:
	rm ${WRKSRC}/jartool.c.*

.include <bsd.port.mk>
