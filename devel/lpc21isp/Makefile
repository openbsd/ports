# $OpenBSD: Makefile,v 1.6 2016/12/30 21:00:21 jca Exp $

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

post-extract:
	perl -pi -e 's/\r$$//' ${WRKSRC}/lpc21isp.h

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/lpc21isp ${PREFIX}/bin/lpc21isp

.include <bsd.port.mk>
