# $OpenBSD: Makefile,v 1.29 2015/07/06 14:09:46 sthen Exp $

SHARED_LIBS =		rtmp 1.0

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-2.4pl8
PATCHFILES =		rtmpdump-KSV-20150505.patch.gz
WRKDIST =		${WRKDIR}/rtmpdump

CATEGORIES =		net

HOMEPAGE =		http://rtmpdump.mplayerhq.hu/

# tools GPLv2+, librtmp LGPLv2.1+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c crypto m pthread ssl z

# packaged from git://git.ffmpeg.org/rtmpdump : a107cef9
# and patch from https://github.com/K-S-V/Scripts/releases/, see
# http://stream-recorder.com/forum/customized-rtmpdump-binaries-patch-file-t16103.html
MASTER_SITES =		http://spacehopper.org/mirrors/

MAKE_FLAGS =		CC="${CC}" XCFLAGS="${CFLAGS}" OPT= \
			THREADLIB=-pthread SO_VERSION=${LIBrtmp_VERSION} \
			VERSION="v2.4-git-a107cef9\ KSV-2015-05-05"

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtmpdump
	cd ${WRKBUILD}; \
	  ${INSTALL_DATA} README COPYING ChangeLog ${PREFIX}/share/doc/rtmpdump

.include <bsd.port.mk>
