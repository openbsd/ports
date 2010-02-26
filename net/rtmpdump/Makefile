# $OpenBSD: Makefile,v 1.10 2010/02/26 18:46:26 sthen Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-2.1d

CATEGORIES =		net

HOMEPAGE =		http://rtmpdump.mplayerhq.hu/

# GPLv2+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c crypto pthread z

MASTER_SITES =		${HOMEPAGE}/download/

MAKE_FLAGS =		CC="${CC}" XCFLAGS="${CFLAGS}"
ALL_TARGET =		linux

NO_REGRESS =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtmpdump
	cd ${WRKBUILD}; \
	  ${INSTALL_PROGRAM} rtmpdump rtmpsrv rtmpsuck streams ${PREFIX}/bin; \
	  ${INSTALL_DATA} README COPYING ChangeLog ${PREFIX}/share/doc/rtmpdump

.include <bsd.port.mk>
