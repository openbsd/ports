# $OpenBSD: Makefile,v 1.2 2006/10/29 11:03:30 steven Exp $

COMMENT=	"environment for rapid engineering and scientific processing"

VERSION=	2.0
DISTNAME=	FreeMat-${VERSION}
PKGNAME=	freemat-${VERSION}

CATEGORIES=	math

HOMEPAGE=	http://freemat.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL GLU ICE SM X11 Xcursor Xext Xfixes Xi Xinerama Xrandr \
		Xrender c curses fontconfig freetype g2c glib-2.0 \
		m png pthread stdc++ z amd

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freemat/}

MODULES=	x11/qt4 devel/gettext

BUILD_DEPENDS=	::devel/pkgconfig
LIB_DEPENDS=	avcall::devel/ffcall \
		arpack.>=1::math/arpack \
		blas.>=1::math/blas \
		fftw3.>=4::math/fftw3,double \
		fftw3f.>=4::math/fftw3,float \
		lapack.>=1::math/lapack \
		matio::math/matio \
		umfpack::math/umfpack

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	F77=${FC} \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/amd -I${LOCALBASE}/include/umfpack -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		PKG_CONFIG_LIBDIR="${LOCALBASE}/lib/qt4"
MAKE_FLAGS=	MYDEFS="-DBASEPATH=\\\"../share/${DISTNAME}\\\""

post-install:
	@rm -f ${PREFIX}/share/${DISTNAME}/mfiles
	@cd ${PREFIX}/share/${DISTNAME} && ln -sf help/MFiles mfiles
	@cd ${PREFIX}/bin && mv FreeMat freemat

.include <bsd.port.mk>
