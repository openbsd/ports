# $OpenBSD: Makefile,v 1.5 2016/09/02 22:08:29 jasper Exp $

COMMENT =	ISP tool for LPC2000 and ADUC70xx microcontrollers

V =		1.97
DISTNAME =	lpc21isp_${V:S/.//}
PKGNAME =	lpc21isp-${V}
CATEGORIES =	devel

HOMEPAGE =	http://sourceforge.net/projects/lpc21isp/

MAINTAINER =	Alexander Shiryaev <shiryaev.a.v@gmail.com>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=lpc21isp/}

WANTLIB =	c

USE_GMAKE =	Yes
MAKE_FLAGS =	CC=${CC}

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/lpc21isp ${PREFIX}/bin/lpc21isp

.include <bsd.port.mk>
