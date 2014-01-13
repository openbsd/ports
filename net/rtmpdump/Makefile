# $OpenBSD: Makefile,v 1.26 2014/01/13 23:52:34 sthen Exp $

SHARED_LIBS =		rtmp 1.0

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-2.4pl7
WRKDIST =		${WRKDIR}/rtmpdump

CATEGORIES =		net

HOMEPAGE =		http://rtmpdump.mplayerhq.hu/

# tools GPLv2+, librtmp LGPLv2.1+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c crypto pthread ssl z

# packaged from git://git.ffmpeg.org/rtmpdump : dc76f0a846
MASTER_SITES =		http://spacehopper.org/mirrors/

MAKE_FLAGS =		CC="${CC}" XCFLAGS="${CFLAGS}" OPT= \
			THREADLIB=-pthread SO_VERSION=${LIBrtmp_VERSION}

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtmpdump
	cd ${WRKBUILD}; \
	  ${INSTALL_DATA} README COPYING ChangeLog ${PREFIX}/share/doc/rtmpdump

.include <bsd.port.mk>
