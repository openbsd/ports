# $OpenBSD: Makefile,v 1.3 2006/07/11 15:54:40 kurt Exp $

# max data size too small to build. needs at least 256M
NOT_FOR_ARCHS=	m68k sparc vax

COMMENT=	"essential libraries for java"

DISTNAME=	classpath-0.91

CATEGORIES=	lang java

.for _lib in gtkpeer javaio javalang javalangreflect javanet javanio \
	javautil jawtgnu
SHARED_LIBS+=		${_lib} 0.91
.endfor

HOMEPAGE=	http://www.gnu.org/software/classpath/

MAINTAINER=	Frederick C. Druseikis <fredd@cse.sc.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:zip->=2.3p0:archivers/zip \
		:jikes->=1.22p0:lang/jikes

MODULES=	converters/libiconv

LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

WANTLIB=	z ICE SM X11 Xext Xrender Xtst atk-1.0.0.0 fontconfig \
		freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
		gtk-x11-2.0.0.0 intl m pango-1.0.0.0 pangoft2-1.0.0.0 \
		pangocairo-1.0.0.0 cairo glitz png 

MASTER_SITES=	${MASTER_SITE_GNU:=classpath/}

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--with-libiconv-prefix=${LOCALBASE} \
		--with-glibj=zip --enable-gtk-peer --with-jikes \
		--x-includes=${X11BASE}/include --x-libraries=${X11BASE}/lib

.include <bsd.port.mk>
