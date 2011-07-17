# $OpenBSD: Makefile,v 1.20 2011/07/17 09:56:04 sthen Exp $

SHARED_LIBS =		rtmp 0.0

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-2.4
EXTRACT_SUFX =		.tgz

CATEGORIES =		net

HOMEPAGE =		http://rtmpdump.mplayerhq.hu/

# tools GPLv2+, librtmp LGPLv2.1+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c crypto pthread ssl z

#MASTER_SITES =		${HOMEPAGE}download/
MASTER_SITES =		http://spacehopper.org/mirrors/

MAKE_FLAGS =		CC="${CC}" XCFLAGS="${CFLAGS}" OPT= THREADLIB=-pthread SO_VERSION=${LIBrtmp_VERSION}

USE_GROFF =		Yes
NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtmpdump
	cd ${WRKBUILD}; \
	  ${INSTALL_DATA} README COPYING ChangeLog ${PREFIX}/share/doc/rtmpdump

.include <bsd.port.mk>
