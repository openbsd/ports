# $OpenBSD: Makefile,v 1.16 2009/06/01 22:37:50 benoit Exp $
# $FreeBSD: ports/archivers/fastjar/Makefile,v 1.4 2000/04/24 15:51:08 knu Exp $

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
