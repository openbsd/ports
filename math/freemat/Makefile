# $OpenBSD: Makefile,v 1.30 2013/03/11 11:23:54 espie Exp $

COMMENT=	environment for rapid engineering and scientific processing
BROKEN-hppa =	undefined reference to lapack funcs

V=		4.0
DISTNAME=	FreeMat-${V}-Source
REVISION=		1
PKGNAME=	freemat-${V}

CATEGORIES=	graphics math

HOMEPAGE=	http://freemat.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU ICE SM X11 Xext c m ncurses pcre pthread stdc++
WANTLIB += z amd fftw3 fftw3f portaudio umfpack
WANTLIB += QtGui QtNetwork QtOpenGL QtSvg QtXml

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freemat/}

MODULES=	x11/qt4 devel/cmake

LIB_DEPENDS=	audio/portaudio-svn \
		devel/pcre \
		math/amd \
		math/fftw3,double \
		math/fftw3,float \
		math/umfpack


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
