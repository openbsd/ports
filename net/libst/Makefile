# $OpenBSD: Makefile,v 1.8 2002/12/29 21:14:11 fgsch Exp $

ONLY_FOR_ARCHS=		alpha i386

COMMENT=		"threaded library for writing Internet applications"

DISTNAME=		st-1.3
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
	${INSTALL_PROGRAM} ${WRKSRC}/OPENBSD_${OPSYS_VER}_OPT/libst.so.1.3 \
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
