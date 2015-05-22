# $OpenBSD: Makefile,v 1.4 2015/05/22 11:31:10 ajacoutot Exp $

COMMENT =	implementation of the FITS WCS standard
CATEGORIES =	astro devel
DISTNAME =	wcslib-4.17
HOMEPAGE =	http://www.atnf.csiro.au/people/mcalabre/WCS/wcslib/
REVISION =	1

SHARED_LIBS =	wcs		0.0

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	${MODFORTRAN_WANTLIB} c cfitsio m

MASTER_SITES =	ftp://ftp.atnf.csiro.au/pub/software/wcslib/
EXTRACT_SUFX =	.tar.bz2

MODULES =		fortran
MODFORTRAN_COMPILER =	gfortran

BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS}
TEST_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS =	${MODFORTRAN_LIB_DEPENDS} \
		math/cfitsio

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu autoconf
CONFIGURE_ENV =		LIBwcs_VERSION=${LIBwcs_VERSION}

CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--docdir=${PREFIX}/share/doc/wcslib \
			--with-x

# non-free licensed dependency
CONFIGURE_ARGS +=	--without-pgplot

AUTOCONF_VERSION =	2.61
MAKE_FILE =		GNUmakefile
SUBST_VARS =		DISTNAME

# source files are 0444
post-extract:
	chmod u+w ${WRKSRC}/*

.include <bsd.port.mk>
