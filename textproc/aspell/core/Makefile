# $OpenBSD: Makefile,v 1.23 2009/08/18 23:15:16 jolan Exp $

COMMENT=	spell checker designed to eventually replace Ispell

DISTNAME=	aspell-0.60.6
PKGNAME=	${DISTNAME}p4
SHARED_LIBS +=  aspell               17.0     # .16.4
SHARED_LIBS +=  pspell               17.0     # .16.4
DIST_SUBDIR=	aspell
CATEGORIES=	textproc

DIST_EN=	aspell6-en-6.0-0

MASTER_SITES0=	${MASTER_SITE_GNU:=aspell/}
MASTER_SITES1=	${MASTER_SITE_GNU:=aspell/dict/en/}

DISTFILES=	${DISTNAME}${EXTRACT_SUFX}:0 \
		${DIST_EN}.tar.bz2:1

HOMEPAGE=	http://aspell.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m ncurses stdc++ 

MODULES=		devel/gettext

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--enable-dict-dir=${PREFIX}/share/aspell

post-build:
	cd ${WRKDIR}/${DIST_EN} && \
		cp ${WRKSRC}/data/* . && \
		LD_LIBRARY_PATH=${WRKBUILD}/.libs ./configure --vars \
			ASPELL=${WRKBUILD}/.libs/aspell \
			ASPELL_FLAGS="--local-data-dir=${WRKDIR}/${DIST_EN}" \
			PREZIP=${WRKBUILD}/prezip-bin && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			LD_LIBRARY_PATH=${WRKBUILD}/.libs

post-install:
	cd ${WRKDIR}/${DIST_EN} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
			dictdir=${PREFIX}/share/aspell \
			datadir=${PREFIX}/lib/aspell \
			${INSTALL_TARGET}

.include <bsd.port.mk>
