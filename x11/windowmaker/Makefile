# $OpenBSD: Makefile,v 1.26 2000/03/24 23:28:41 espie Exp $

DISTNAME=	WindowMaker-0.61.1
PKGNAME=	windowmaker-0.61.1
CATEGORIES=	x11
NEED_VERSION=	 1.230
MASTER_SITES=	${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR= beta/srcs
DATAFILES=	WindowMaker-extra-0.1.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${DATAFILES}

MAINTAINER=	jasoni@openbsd.org

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

LIB_DEPENDS=	PropList.2::devel/libproplist \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.1.3::graphics/png \
		gif.4.1::graphics/giflib

GNU_CONFIGURE=	Yes
FAKE=		Yes
SYSCONFDIR=	${PREFIX}/share/WindowMaker/Defaults
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--enable-static --with-pixmapdir="${PREFIX}/share/WindowMaker/Pixmaps" \
		--with-incs-from="-I${PREFIX}/include -I${PREFIX}/include/giflib" \
		--with-libs-from="-L${PREFIX}/lib" --disable-debug 
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-configure:
	@cd ${WRKDIR}/WindowMaker-extra-0.1; \
		./configure --prefix=${WRKINST}${PREFIX}
post-install:
	@cd ${WRKDIR}/WindowMaker-extra-0.1; make install

.include <bsd.port.mk>
