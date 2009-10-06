# $OpenBSD: Makefile,v 1.15 2009/10/06 09:25:12 benoit Exp $

# see md.h, add others
ONLY_FOR_ARCHS =	amd64 alpha i386 sparc

COMMENT =		threaded library for writing Internet applications

DISTNAME =		st-1.9
PKGNAME =		lib${DISTNAME}
SHARED_LIBS =		st	2.0
CATEGORIES =		net devel

HOMEPAGE =		http://state-threads.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# MPLv1.1 or GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=state-threads/}

MAKE_FLAGS =		CC='${CC}' CFLAGS='${CFLAGS} -fPIC -DOPENBSD' \
			LD='${CC}' LDFLAGS='-shared -fPIC' \
			VERSION=${LIBst_VERSION}

USE_GMAKE =		Yes
ALL_TARGET =		openbsd-optimized
NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} \
		${WRKSRC}/OPENBSD_${OPSYS_VER}_OPT/libst.so.${LIBst_VERSION} \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/OPENBSD_${OPSYS_VER}_OPT/libst.a \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/OPENBSD_${OPSYS_VER}_OPT/st.h \
		${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libst
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/libst
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libst
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/libst

.include <bsd.port.mk>
