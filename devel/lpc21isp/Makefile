COMMENT =	ISP tool for LPC2000 and ADUC70xx microcontrollers

V =		1.97
DISTNAME =	lpc21isp_${V:S/.//}
PKGNAME =	lpc21isp-${V}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	http://sourceforge.net/projects/lpc21isp/

# LGPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=lpc21isp/}

WANTLIB =	c

USE_GMAKE =	Yes
MAKE_FLAGS =	CC=${CC}

NO_TEST =	Yes

FIX_CRLF_FILES = lpc21isp.h

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/lpc21isp ${PREFIX}/bin/lpc21isp

.include <bsd.port.mk>
