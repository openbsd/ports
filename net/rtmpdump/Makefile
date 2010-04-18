# $OpenBSD: Makefile,v 1.13 2010/04/18 21:34:16 sthen Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-2.2c

CATEGORIES =		net

HOMEPAGE =		http://rtmpdump.mplayerhq.hu/

# tools GPLv2+, librtmp LGPLv2.1+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c crypto pthread ssl z

MASTER_SITES =		${HOMEPAGE}download/

MAKE_FLAGS =		CC="${CC}" XCFLAGS="${CFLAGS}" OPT= THREADLIB=-pthread
ALL_TARGET =		posix

NO_REGRESS =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtmpdump
	cd ${WRKBUILD}; \
	  ${INSTALL_PROGRAM} rtmpdump rtmpsrv rtmpsuck rtmpgw ${PREFIX}/bin; \
	  ${INSTALL_MAN} rtmpdump.1 ${PREFIX}/man/man1; \
	  ${INSTALL_MAN} rtmpgw.8 ${PREFIX}/man/man8; \
	  ${INSTALL_DATA} README COPYING ChangeLog ${PREFIX}/share/doc/rtmpdump

.include <bsd.port.mk>
