# $OpenBSD: Makefile,v 1.4 2009/06/24 00:04:46 sthen Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		flvstreamer-1.8a

CATEGORIES =		net

# GPLv2+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		http://savannah.gnu.org/submissions_uploads/ \
			http://spacehopper.org/mirrors/
WRKDIST =		${WRKDIR}/flvstreamer

USE_GMAKE =		Yes
MAKE_FLAGS +=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/flvstreamer ${PREFIX}/bin

.include <bsd.port.mk>
