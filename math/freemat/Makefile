# $OpenBSD: Makefile,v 1.22 2010/07/26 09:31:48 jakemsr Exp $

COMMENT=	environment for rapid engineering and scientific processing

V=		3.6
DISTNAME=	FreeMat-${V}
PKGNAME=	freemat-${V}
REVISION=	4

CATEGORIES=	graphics math

HOMEPAGE=	http://freemat.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= 	GL GLU amd c curses m pthread stdc++ z \
		${MODFORTRAN_WANTLIB} \
		avcall arpack.>=1 blas.>=1 fftw3.>=4 fftw3f.>=4 lapack.>=1 \
		pcre portaudio umfpack QtGui QtNetwork QtOpenGL QtSvg QtXml

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freemat/}

MODULES=	x11/qt4 devel/gettext fortran
MODFORTRAN_WANTG77= Yes

BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=	::devel/ffcall \
		::math/amd \
		::math/arpack \
		::math/blas \
		::math/fftw3,double \
		::math/fftw3,float \
		::math/lapack \
		::devel/pcre \
		::audio/portaudio-svn \
		::math/umfpack \
		::x11/qt4 \
		${MODFORTRAN_LIB_DEPENDS}

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
