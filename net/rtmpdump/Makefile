# $OpenBSD: Makefile,v 1.32 2019/07/14 00:39:38 naddy Exp $

SHARED_LIBS =		rtmp 1.1

COMMENT =		dump RTMP media streams

# also see VERSION in MAKE_FLAGS below
DISTNAME =		rtmpdump-2.4.20151223
PATCHFILES =		rtmpdump-KSV-20151215.patch.gz

CATEGORIES =		net

HOMEPAGE =		http://rtmpdump.mplayerhq.hu/

# tools GPLv2+, librtmp LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto m pthread ssl z

# packaged from git://git.ffmpeg.org/rtmpdump : fa8646da
# and patch from https://github.com/K-S-V/Scripts/releases/, see
# http://stream-recorder.com/forum/customized-rtmpdump-binaries-patch-file-t16103.html
MASTER_SITES =		https://spacehopper.org/mirrors/

MAKE_FLAGS =		CC="${CC}" XCFLAGS="${CFLAGS}" OPT= \
			THREADLIB=-pthread SO_VERSION=${LIBrtmp_VERSION} \
			VERSION="v2.4-git-fa8646da\ KSV-2015-12-15"

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtmpdump
	cd ${WRKBUILD}; \
	  ${INSTALL_DATA} README COPYING ChangeLog ${PREFIX}/share/doc/rtmpdump

.include <bsd.port.mk>
