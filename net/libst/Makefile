# $OpenBSD: Makefile,v 1.2 2001/10/01 02:20:51 naddy Exp $

COMMENT=		"threaded library for writing Internet applications"

DISTNAME=		st-1.2
PKGNAME=		lib${DISTNAME}
CATEGORIES=		net devel
NEED_VERSION=		1.402
HOMEPAGE=		http://oss.sgi.com/projects/state-threads/
MASTER_SITES=		${HOMEPAGE}download/

MAINTAINER=		Patroklos Argyroudis <argp@bsd.gr>

# MPL or GNU GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=		CC='${CC}' CFLAGS='${CFLAGS} -fPIC -DOPENBSD' \
			LD='${CC}' LDFLAGS='-shared -fPIC'

USE_GMAKE=		Yes
ALL_TARGET=		openbsd-optimized

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/OPENBSD_${OPSYS_VER}_OPT/libst.so \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/OPENBSD_${OPSYS_VER}_OPT/libst.a \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/OPENBSD_${OPSYS_VER}_OPT/st.h \
		${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libst
	${INSTALL_DATA} ${WRKSRC}/docs/fig.gif ${PREFIX}/share/doc/libst
	${INSTALL_DATA} ${WRKSRC}/docs/notes.html ${PREFIX}/share/doc/libst
	${INSTALL_DATA} ${WRKSRC}/docs/reference.html ${PREFIX}/share/doc/libst
	${INSTALL_DATA} ${WRKSRC}/docs/st.html ${PREFIX}/share/doc/libst

.include <bsd.port.mk>
