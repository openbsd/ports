# $OpenBSD: Makefile,v 1.25 2003/04/13 02:40:48 david Exp $
# Uses pthreads

COMMENT=	"open source version of the Netscape browser"

VER=		1.4a
DISTNAME=	mozilla
PKGNAME=	mozilla-${VER}
DISTFILES=	mozilla-source-${VER}.tar.bz2

BROKEN=		core dumps in dynamic library constructor

CATEGORIES=	www

HOMEPAGE=	http://www.mozilla.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla/releases/mozilla${VER}/src/

BUILD_DEPENDS=	:zip->=2.3:archivers/zip
LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		glib.1.2::devel/glib \
		IDL.4::devel/ORBit \
		jpeg.62::graphics/jpeg \
		png.3::graphics/png \
		mng.1::graphics/libmng

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=					\
		--with-system-jpeg=${LOCALBASE}	\
		--with-system-mng=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--disable-ldap
# disable this for now
#		--enable-crypto			\
# does not pass NSPR tests
#		--with-pthreads			\
# enable these once Mozilla actually runs
#		--disable-debug			\
#		--enable-optimize="${CFLAGS}"	\
#		--disable-tests			\

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
