# $OpenBSD: Makefile,v 1.24 2002/12/29 15:03:57 fgsch Exp $
# Uses pthreads

COMMENT=	"free version of the Netscape browser"

VER=		0.9.3
DISTNAME=	mozilla
PKGNAME=	mozilla-${VER}
DISTFILES=	mozilla-source-${VER}.tar.bz2

BROKEN=		core dumps in dynamic library constructor

CATEGORIES=	www

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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

CONFIGURE_STYLE= autoconf
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

CONFIGURE_ENV=	BSD_PTHREAD_LIBS="-pthread" \
		CFLAGS="" CXXFLAGS=""
MAKE_ENV=	LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		CFLAGS="" CXXFLAGS="" \
		MALLOC_OPTIONS=j

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mozilla
	@chmod 755 ${PREFIX}/lib/mozilla
	@cd ${WRKSRC}/dist/bin && ${TAR} -chf - . | \
		${TAR} -xf - -C ${PREFIX}/lib/mozilla
	${INSTALL_SCRIPT} ${WRKSRC}/dist/bin/mozilla ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dist/bin/mozilla-bin ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dist/bin/mozilla-config ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dist/bin/run-mozilla.sh ${PREFIX}/bin

.include <bsd.port.mk>
