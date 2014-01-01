# $OpenBSD: Makefile,v 1.25 2014/01/01 20:46:28 naddy Exp $

SHARED_LIBS =		rtmp 0.0

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-2.4pl5
WRKDIST =		${WRKDIR}/rtmpdump

CATEGORIES =		net

HOMEPAGE =		http://rtmpdump.mplayerhq.hu/

# tools GPLv2+, librtmp LGPLv2.1+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c crypto pthread ssl z

# packaged from git://git.ffmpeg.org/rtmpdump : 3a1e20c08
MASTER_SITES =		http://spacehopper.org/mirrors/

MAKE_FLAGS =		CC="${CC}" XCFLAGS="${CFLAGS}" OPT= \
			THREADLIB=-pthread SO_VERSION=${LIBrtmp_VERSION}

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtmpdump
	cd ${WRKBUILD}; \
	  ${INSTALL_DATA} README COPYING ChangeLog ${PREFIX}/share/doc/rtmpdump

.include <bsd.port.mk>
