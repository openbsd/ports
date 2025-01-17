COMMENT =	implementation of the FITS WCS standard
CATEGORIES =	astro devel
DISTNAME =	wcslib-8.4
HOMEPAGE =	https://www.atnf.csiro.au/people/mcalabre/WCS/wcslib/

SHARED_LIBS =	wcs		3.0

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =	c cfitsio m

SITES =		https://www.atnf.csiro.au/people/mcalabre/WCS/
EXTRACT_SUFX =	.tar.bz2

MODULES =	gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	fortran

LIB_DEPENDS =	math/cfitsio
TEST_DEPENDS =	lang/gcc/${MODGCC4_VERSION},-f95
# failure in Fortran tunits test; some strings are not printed
# as expected, instead replaced by NULs.
# diff -a Fortran/test/tunits.out Fortran/tunits.out | cat -v

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		LIBwcs_VERSION=${LIBwcs_VERSION}

CONFIGURE_ARGS =	--docdir=${PREFIX}/share/doc/wcslib \
			--with-x

# non-free licensed dependency
CONFIGURE_ARGS +=	--without-pgplot

AUTOCONF_VERSION =	2.71
MAKE_FILE =		GNUmakefile
SUBST_VARS =		DISTNAME

.include <bsd.port.mk>
