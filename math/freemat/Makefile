# $OpenBSD: Makefile,v 1.31 2015/07/20 23:13:59 ajacoutot Exp $

COMMENT=	environment for rapid engineering and scientific processing
BROKEN-hppa =	undefined reference to lapack funcs

V=		4.0
DISTNAME=	FreeMat-${V}-Source
REVISION=	2
PKGNAME=	freemat-${V}

CATEGORIES=	graphics math

HOMEPAGE=	http://freemat.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU QtGui QtNetwork QtOpenGL QtSvg QtXml amd c fftw3
WANTLIB += fftw3f m ncurses pcre portaudio pthread stdc++ umfpack
WANTLIB += z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freemat/}

MODULES=	x11/qt4 devel/cmake

LIB_DEPENDS=	audio/portaudio-svn \
		devel/pcre \
		math/suitesparse \
		math/fftw3,double \
		math/fftw3,float

NO_TEST=	Yes

SUBST_VARS=	V

CONFIGURE_ARGS=	-DUSE_LLVM:BOOL=FALSE

WRKDIST=	${WRKDIR}/FreeMat-${V}.1-Source

post-extract:
	@cd ${WRKSRC} && find . -name \*.moc.cpp | xargs rm

pre-configure:
	@rm ${WRKSRC}/CMakeCache.txt

post-install:
	@mv ${PREFIX}/bin/FreeMat ${PREFIX}/bin/freemat

.include <bsd.port.mk>
