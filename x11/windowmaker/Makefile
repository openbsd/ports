# $OpenBSD: Makefile,v 1.34 2001/01/19 03:45:58 jasoni Exp $

DISTNAME=	WindowMaker-0.63.1
PKGNAME=	windowmaker-0.63.1
CATEGORIES=	x11
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR= beta/srcs
DATAFILES=	WindowMaker-extra-0.1.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${DATAFILES}

HOMEPAGE=	http://www.windowmaker.org/

LIB_DEPENDS=	PropList.2::devel/libproplist \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.1::graphics/png \
		gif.4.1::graphics/giflib

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

SYSCONFDIR=	${PREFIX}/share/WindowMaker/Defaults
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--enable-static --with-pixmapdir="${PREFIX}/share/WindowMaker/Pixmaps" \
		--with-incs-from="-I${PREFIX}/include -I${PREFIX}/include/giflib" \
		--with-libs-from="-L${PREFIX}/lib" --disable-debug 
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-configure:
	@cd ${WRKDIR}/WindowMaker-extra-0.1; \
		./configure --prefix="${PREFIX}"

post-install:
	@cd ${WRKDIR}/WindowMaker-extra-0.1 && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${FAKE_FLAGS} -f ${MAKE_FILE} install

.include <bsd.port.mk>
