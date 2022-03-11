COMMENT =	PGF image format handling library
V =		7.19.3
DISTNAME =	libPGF-codec-and-console-src
PKGNAME =	libpgf-${V}

SHARED_LIBS =	pgf		1.0

CATEGORIES =	graphics devel

HOMEPAGE =	http://sourceforge.net/projects/libpgf/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB =	m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libpgf/libpgf/${V}-latest/}
EXTRACT_SUFX =		.zip

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9
AUTORECONF =		sh autogen.sh

# Force disabling documentation generation through doxygen,
# it's unhelpful and wants too many dependencies.
CONFIGURE_ENV =	ac_cv_path_DOXYGEN= ac_cv_path_DOT=

WRKDIST =	${WRKDIR}/libPGF-codec-and-console-src/PGF/Codec
SUBST_VARS +=	PKGNAME

.include <bsd.port.mk>
