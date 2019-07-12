# $OpenBSD: Makefile,v 1.20 2019/07/12 20:48:31 sthen Exp $

# see md.h, add others
ONLY_FOR_ARCHS =	amd64 alpha i386

COMMENT =		threaded library for writing Internet applications

DISTNAME =		st-1.9
PKGNAME =		lib${DISTNAME}
SHARED_LIBS =		st	2.0
CATEGORIES =		net devel
REVISION =		0

HOMEPAGE =		http://state-threads.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# MPLv1.1 or GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=state-threads/}

MAKE_FLAGS =		CC='${CC}' CFLAGS='${CFLAGS} -fPIC -DOPENBSD' \
			LD='${CC}' LDFLAGS='-shared -fPIC' \
			VERSION=${LIBst_VERSION}

USE_GMAKE =		Yes
ALL_TARGET =		openbsd-optimized
NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} \
		${WRKSRC}/OPENBSD_${OSREV}_OPT/libst.so.${LIBst_VERSION} \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/OPENBSD_${OSREV}_OPT/libst.a \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/OPENBSD_${OSREV}_OPT/st.h \
		${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libst
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/libst
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libst
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/libst

.include <bsd.port.mk>
