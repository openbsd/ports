# $OpenBSD: Makefile,v 1.1.1.1 2013/04/01 12:02:36 zhuk Exp $

COMMENT =	PGF image format handling library
V =		6.12.24
DISTNAME =	libpgf-$V-src
PKGNAME =	${DISTNAME:C/-src//}

SHARED_LIBS =	pgf		0.0

CATEGORIES =	graphics devel
HOMEPAGE =	http://sourceforge.net/projects/libpgf/
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	m stdc++

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libpgf/}

# needs libtoolize
BUILD_DEPENDS +=	devel/libtool

CONFIGURE_STYLE =	gnu autoconf automake
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9

# Force disabling documentation generation through doxygen,
# it's unhelpful and wants too many dependencies.
CONFIGURE_ENV =	ac_cv_path_DOXYGEN= ac_cv_path_DOT=

WRKDIST =	${WRKDIR}/libpgf
SUBST_VARS +=	PKGNAME

post-patch:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		sh autogen.sh

.include <bsd.port.mk>
