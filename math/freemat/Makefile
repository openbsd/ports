# $OpenBSD: Makefile,v 1.16 2009/06/25 00:11:19 sthen Exp $

COMMENT=	environment for rapid engineering and scientific processing

V=		3.6
DISTNAME=	FreeMat-${V}
PKGNAME=	freemat-${V}p0

CATEGORIES=	graphics math

HOMEPAGE=	http://freemat.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL GLU amd c curses g2c m ossaudio pthread stdc++ z

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
		PKG_CONFIG_LIBDIR="${LOCALBASE}/lib/qt4/pkgconfig:${LOCALBASE}/lib/qt4" \
		ac_cv_path_LLVM_CONFIG=

SUBST_VARS=	V

post-install:
	@mv ${PREFIX}/bin/FreeMat ${PREFIX}/bin/freemat

.include <bsd.port.mk>
