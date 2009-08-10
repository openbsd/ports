# $OpenBSD: Makefile,v 1.40 2009/08/10 17:31:07 kili Exp $

ONLY_FOR_ARCHS=	amd64 i386 powerpc

COMMENT-main=	kaffe.org's Java JDK1.4 compiler, runtime and libs

DISTNAME=	kaffe-1.1.7
PKGNAME-main=	${DISTNAME}p8

CATEGORIES=	lang

.for _lib in gtkpeer javaio javalang javanet javanio jawtgnu \
	kaffevm management math security tritonusesd zip
SHARED_LIBS+=           ${_lib} 2.0
.endfor

MASTER_SITES=	ftp://ftp.kaffe.org/pub/kaffe/v1.1.x-development/

HOMEPAGE=	http://www.kaffe.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

BUILD_DEPENDS=	::archivers/zip \
		:jikes->=1.22p0:lang/jikes
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		gmp.>=4.::devel/gmp \
		audiofile::devel/libaudiofile \
		esd.>=2::audio/esound \
		ltdl::devel/libtool,-ltdl
RUN_DEPENDS=	::archivers/zip \
		:jikes->=1.22p0:lang/jikes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0 c cairo
WANTLIB += expat fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs sndio xcb z

SEPARATE_BUILD=	concurrent

MULTI_PACKAGES=	-main
PREFIX=		${LOCALBASE}/kaffe
PREFIX-main=	${LOCALBASE}

CONFIGURE_STYLE=gnu
GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS=	GNU_ARCH

MODGNU_CONFIG_GUESS_DIRS= \
		${WRKSRC}/libraries/javalib/external/classpath \
		${WRKSRC}/external/gcc/fastjar

CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

CONFIGURE_ARGS+= \
		--with-iconv-prefix=${LOCALBASE} \
		--disable-boehm-gc-configuration \
		--with-engine=intrp

post-install:
	@cd ${PREFIX}/jre/lib && ln -s glibj.zip rt.jar

.include <bsd.port.mk>
