# $OpenBSD: Makefile,v 1.5 2015/05/28 08:09:46 pascal Exp $

COMMENT =	implementation of the FITS WCS standard
CATEGORIES =	astro devel
DISTNAME =	wcslib-4.17
HOMEPAGE =	http://www.atnf.csiro.au/people/mcalabre/WCS/wcslib/
REVISION =	2

SHARED_LIBS =	wcs		0.0

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c cfitsio m

MASTER_SITES =	ftp://ftp.atnf.csiro.au/pub/software/wcslib/
EXTRACT_SUFX =	.tar.bz2

MODULES =		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		fortran

LIB_DEPENDS =	math/cfitsio
TEST_DEPENDS =	lang/gcc/${MODGCC4_VERSION},-f95

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
