# $OpenBSD: Makefile,v 1.19 2001/08/13 14:16:34 drahn Exp $
#
# From: $NetBSD: Makefile,v 1.13 1998/08/04 13:09:21 fvdl Exp $
#	but modified to use lesstif 0.86.0...

COMMENT=	"free version of the Netscape browser"

VER=		0.9.3
DISTNAME=	mozilla
PKGNAME=	mozilla-${VER}
DISTFILES=	mozilla-source-${VER}.tar.bz2

bROKEN=		core dumps in dynamic library constructor

CATEGORIES=	www
NEED_VERSION=	1.402

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla/releases/mozilla${VER}/src/

#BUILD_DEPENDS=	zip:archivers/zip
#LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
#		ORBit.2:devel/ORBit \
#		jpeg.9:graphics/jpeg \
#		png.4:graphics/png \
#		mng.1:graphics/libmng \
#		gdk-pixbuf.2:graphics/gdk-pixbuf

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu	autoconf
CONFIGURE_ARGS=					\
		--disable-cpp-exceptions	\
		--disable-cpp-rtti		\
		--disable-debug			\
		--disable-idltool		\
		--disable-md			\
		--disable-pedantic		\
		--disable-xterm-updates		\
		--enable-crypto			\
		--enable-double-buffer		\
		--enable-editor			\
		--enable-mailnews		\
		--enable-mathml			\
		--enable-optimize="${CFLAGS}"	\
		--enable-pics			\
		--enable-svg			\
		--enable-tests			\
		--enable-toolkit=gtk		\
		--enable-x11-shm		\
		--enable-chrome-format=jar	\
		--with-jpeg=${LOCALBASE}	\
		--with-png=${LOCALBASE}		\
		--with-mng=${LOCALBASE}		\
		--with-pthreads

CONFIGURE_ENV=	BSD_PTHREAD_LIBS="${PTHREAD_LIBS}" \
		CFLAGS="" CXXFLAGS=""
MAKE_ENV=	LD_LIBRARY_PATH=${WRKSRC}/dist/bin \
		CFLAGS="" CXXFLAGS="" \
		MALLOC_OPTIONS=j
do-install:
	mkdir -p ${PREFIX}/lib/mozilla
	${CHMOD} 755 ${PREFIX}/lib/mozilla
	cd ${WRKSRC}/dist/bin && ${TAR} -chf - . | \
		${TAR} -xf - -C ${PREFIX}/lib/mozilla
	${INSTALL_SCRIPT} ${WRKSRC}/dist/bin/mozilla ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dist/bin/mozilla-bin ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dist/bin/mozilla-config ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dist/bin/run-mozilla.sh ${PREFIX}/bin

.include <bsd.port.mk>
