# $OpenBSD: Makefile,v 1.15 2008/06/11 21:09:06 martynas Exp $

COMMENT=	environment for rapid engineering and scientific processing

V=		3.6
DISTNAME=	FreeMat-${V}
PKGNAME=	freemat-${V}

CATEGORIES=	graphics math

HOMEPAGE=	http://freemat.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL GLU ICE SM X11 Xcursor Xext Xfixes Xi Xinerama Xrandr \
		Xrender c curses fontconfig freetype g2c glib-2.0 \
		m ossaudio png pthread stdc++ z amd gthread-2.0 ssl crypto

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freemat/}

MODULES=	x11/qt4 devel/gettext

LIB_DEPENDS=	avcall::devel/ffcall \
		arpack.>=1::math/arpack \
		blas.>=1::math/blas \
		fftw3.>=4::math/fftw3,double \
		fftw3f.>=4::math/fftw3,float \
		lapack.>=1::math/lapack \
		pcre::devel/pcre \
		portaudio::audio/portaudio-svn \
		umfpack::math/umfpack \
		QtGui,QtNetwork,QtOpenGL,QtSvg,QtXml::x11/qt4


USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
AUTOCONF_VERSION= 2.61
CONFIGURE_STYLE=  autoconf no-autoheader

CONFIGURE_ENV=	F77=${FC} \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/amd -I${LOCALBASE}/include/umfpack -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		PKG_CONFIG_LIBDIR="${LOCALBASE}/lib/qt4/pkgconfig:${LOCALBASE}/lib/qt4"

SUBST_VARS=	V

post-install:
	@mv ${PREFIX}/bin/FreeMat ${PREFIX}/bin/freemat

.include <bsd.port.mk>
