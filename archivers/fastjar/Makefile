# $OpenBSD: Makefile,v 1.18 2012/10/15 15:18:31 sthen Exp $

COMMENT =	Sun JDK's jar command written entirely in C

DISTNAME =	fastjar-0.94
CATEGORIES =	archivers

HOMEPAGE =	http://fastjar.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =		c z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fastjar/}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

NO_REGRESS =		Yes

post-extract:
	@rm -f ${WRKSRC}/jartool.c.*

.include <bsd.port.mk>
