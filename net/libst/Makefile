# $OpenBSD: Makefile,v 1.9 2003/01/03 20:46:04 naddy Exp $

ONLY_FOR_ARCHS=		alpha i386

COMMENT=		"threaded library for writing Internet applications"

DISTNAME=		st-1.4
PKGNAME=		lib${DISTNAME}
CATEGORIES=		net devel
HOMEPAGE=		http://state-threads.sourceforge.net/

MAINTAINER=		Patroklos Argyroudis <argp@ieee.org>

# MPL or GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=state-threads/}

MAKE_FLAGS=		CC='${CC}' CFLAGS='${CFLAGS} -fPIC -DOPENBSD' \
			LD='${CC}' LDFLAGS='-shared -fPIC'

USE_GMAKE=		Yes
ALL_TARGET=		openbsd-optimized
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/OPENBSD_${OPSYS_VER}_OPT/libst.so.1.4 \
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
