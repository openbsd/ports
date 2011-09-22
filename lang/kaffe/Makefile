# $OpenBSD: Makefile,v 1.54 2011/09/22 21:15:30 jasper Exp $

ONLY_FOR_ARCHS=	amd64 i386 powerpc

COMMENT-main=	kaffe.org's Java JDK1.4 compiler, runtime and libs

VER=		1.1.7
DISTNAME=	kaffe-${VER}
PKGNAME-main=	kaffe-${VER}
REVISION-main=	13

CATEGORIES=	lang

.for _lib in gtkpeer javaio javalang javanet javanio jawtgnu \
	kaffevm management math security tritonusesd zip
SHARED_LIBS+=           ${_lib} 2.0
.endfor

MASTER_SITES=	${HOMEPAGE}ftp/pub/kaffe/v1.1.x-development/

HOMEPAGE=	http://www.kaffe.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext
USE_GMAKE=	Yes
USE_GROFF=	Yes

BUILD_DEPENDS=	archivers/zip \
		lang/jikes>=1.22p0
LIB_DEPENDS=	x11/gtk+2 \
		devel/gmp \
		devel/libaudiofile \
		audio/esound
RUN_DEPENDS=	archivers/zip \
		lang/jikes>=1.22p0

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xtst audiofile c cairo esd
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gmp gtk-x11-2.0 m pcre pixman-1 png pthread pthread-stubs
WANTLIB += sndio xcb xcb-render xcb-shm z

SEPARATE_BUILD=	concurrent

MULTI_PACKAGES=	-main

PREFIX=		${LOCALBASE}/kaffe
PREFIX-main=	${LOCALBASE}

MAKE_ENV+= ${_lt_libs}
MAKE_FLAGS+= ${_lt_libs}

CONFIGURE_STYLE=gnu
GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS=	GNU_ARCH

MODGNU_CONFIG_GUESS_DIRS= \
		${WRKSRC}/libraries/javalib/external/classpath \
		${WRKSRC}/external/gcc/fastjar

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+= --disable-boehm-gc-configuration \
		--enable-static \
		--with-engine=intrp

post-install:
	@cd ${PREFIX}/jre/lib && ln -s glibj.zip rt.jar

.include <bsd.port.mk>
