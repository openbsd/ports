# $OpenBSD: Makefile,v 1.1.1.1 2013/04/11 14:05:18 zhuk Exp $

COMMENT =	implementation of the FITS WCS standard
CATEGORIES =	astro devel
DISTNAME =	wcslib-4.17
HOMEPAGE =	http://www.atnf.csiro.au/people/mcalabre/WCS/wcslib/

SHARED_LIBS =	wcs		0.0

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c cfitsio gfortran m

MASTER_SITES =	ftp://ftp.atnf.csiro.au/pub/software/wcslib/
EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS =	lang/gfortran
LIB_DEPENDS =	lang/gfortran,-lib \
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
