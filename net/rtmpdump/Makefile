# $OpenBSD: Makefile,v 1.16 2010/07/18 10:37:45 sthen Exp $

SHARED_LIBS =		rtmp 0.0

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-2.3
EXTRACT_SUFX =		.tgz

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

NO_REGRESS =		Yes

do-configure:
	perl -pi -e 's,so\.0,so.${LIBrtmp_VERSION},g' \
	    ${WRKSRC}/librtmp/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtmpdump
	cd ${WRKBUILD}; \
	  ${INSTALL_DATA} README COPYING ChangeLog ${PREFIX}/share/doc/rtmpdump

.include <bsd.port.mk>
