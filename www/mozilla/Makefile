# $OpenBSD: Makefile,v 1.32 2003/05/17 05:15:10 wilfried Exp $
# Uses pthreads

COMMENT=	"open source version of the Netscape browser"

VER=		1.4a
DISTNAME=	mozilla
PKGNAME=	mozilla-${VER}
DISTFILES=	mozilla-source-${VER}.tar.bz2

CATEGORIES=	www

HOMEPAGE=	http://www.mozilla.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla/releases/mozilla${VER}/src/

MODULES=	iconv
MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	C++
BUILD_DEPENDS=	:zip->=2.3:archivers/zip
LIB_DEPENDS=	gtk.1,gdk.1::x11/gtk+ \
		glib.1,gmodule.1::devel/glib \
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
		--enable-crypto			\
		--disable-debug			\
		--disable-tests			\
		--disable-profilesharing	\
		--disable-ldap
# does not pass NSPR tests
#		--with-pthreads			\
# enable these once Mozilla actually runs
#		--enable-optimize="${CFLAGS}"	\

CONFIGURE_ENV=	BSD_PTHREAD_LIBS="-pthread" \
		CFLAGS="" CXXFLAGS=""
MAKE_ENV=	LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		CFLAGS="" CXXFLAGS="" \
		MALLOC_OPTIONS=j

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/mozilla

do-install:
	${INSTALL_DATA_DIR} ${MOZ}
.for dir in chrome components defaults icons res plugins searchplugins
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB} && ${TAR} -chf - *.so.1.0 | \
		${TAR} -xf - -C ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/mozilla ${MOB}/mozilla-config ${MOB}/run-mozilla.sh ${PREFIX}/bin
	${INSTALL_DATA} ${MOB}/LICENSE ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/mozilla-bin ${MOZ}

.include <bsd.port.mk>
