# $OpenBSD: Makefile,v 1.4 2013/09/10 18:11:28 jasper Exp $

COMMENT =	ISP tool for LPC2000 and ADUC70xx microcontrollers

DISTNAME =	lpc21isp_194
PKGNAME =	lpc21isp-1.94
CATEGORIES =	devel

HOMEPAGE =	http://sourceforge.net/projects/lpc21isp/

MAINTAINER =	Alexander Shiryaev <shiryaev.a.v@gmail.com>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=lpc21isp/}

WANTLIB =	c

WRKDIST =	${WRKDIR}

USE_GMAKE =	Yes
MAKE_FLAGS =	CC=${CC}

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/lpc21isp ${PREFIX}/bin/lpc21isp

.include <bsd.port.mk>
