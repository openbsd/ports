# $OpenBSD: Makefile,v 1.9 2019/04/02 09:23:00 naddy Exp $

COMMENT =	PGF image format handling library
V =		6.12.24
DISTNAME =	libpgf-$V-src
REVISION =	2
PKGNAME =	${DISTNAME:C/-src//}

SHARED_LIBS =	pgf		0.0

CATEGORIES =	graphics devel
HOMEPAGE =	http://sourceforge.net/projects/libpgf/
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libpgf/}

# needs libtoolize
BUILD_DEPENDS +=	devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9

# Force disabling documentation generation through doxygen,
# it's unhelpful and wants too many dependencies.
CONFIGURE_ENV =	ac_cv_path_DOXYGEN= ac_cv_path_DOT=

WRKDIST =	${WRKDIR}/libpgf
SUBST_VARS +=	PKGNAME

do-gen:
	cd ${WRKSRC} && ${AUTOCONF_ENV} sh autogen.sh

.include <bsd.port.mk>
