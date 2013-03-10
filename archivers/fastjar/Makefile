# $OpenBSD: Makefile,v 1.19 2013/03/10 22:28:04 espie Exp $

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
	@rm -f ${WRKSRC}/jartool.c.*

.include <bsd.port.mk>
