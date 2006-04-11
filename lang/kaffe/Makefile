# $OpenBSD: Makefile,v 1.26 2006/04/11 01:09:44 kurt Exp $

ONLY_FOR_ARCHS=	i386 powerpc

COMMENT=	"kaffe.org's Java JDK1.4 compiler, runtime and libs"

DISTNAME=	kaffe-1.1.7

CATEGORIES=	lang

.for _lib in gtkpeer javaio javalang javanet javanio jawtgnu \
	kaffevm management math security tritonusesd zip
SHARED_LIBS+=           ${_lib} 1.0
.endfor

MASTER_SITES=	ftp://ftp.kaffe.org/pub/kaffe/v1.1.x-development/

HOMEPAGE=	http://www.kaffe.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext
USE_LIBTOOL=	Yes
USE_GMAKE=	yes

BUILD_DEPENDS=	::archivers/zip \
		:jikes->=1.22p0:lang/jikes
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		gmp.4.::devel/gmp \
		audiofile::devel/libaudiofile \
		esd.2::audio/esound \
		ltdl::devel/libtool,-ltdl
RUN_DEPENDS=	::archivers/zip

WANTLIB=	ICE SM X11 Xext Xft Xrender Xtst atk-1.0.0.0 c \
		fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 gthread-2.0.0.0 m pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
		pthread

SEPARATE_BUILD=	concurrent

PREFIX=		${LOCALBASE}/kaffe

CONFIGURE_STYLE=gnu

MODGNU_CONFIG_GUESS_DIRS= \
		${WRKSRC}/libraries/javalib/external/classpath \
		${WRKSRC}/external/gcc/fastjar

CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

CONFIGURE_ARGS+= \
		--with-iconv-prefix=${LOCALBASE} \
		--disable-boehm-gc-configuration \
		--with-engine=intrp

.include <bsd.port.mk>
