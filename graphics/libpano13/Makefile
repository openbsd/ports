# $OpenBSD: Makefile,v 1.13 2013/06/04 18:41:49 naddy Exp $

COMMENT =		library for processing panoramic images
DISTNAME =		libpano13-2.9.18
# the following are useful for rc/betas and don't hurt otherwise:
PKGNAME =		${DISTNAME:S/_//}
WRKDIST =		${WRKDIR}/${DISTNAME:C/_.*//}

SHARED_LIBS +=		pano13               2.1

CATEGORIES =		graphics
HOMEPAGE =		http://panotools.sourceforge.net/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c jpeg m png tiff z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=panotools/}

USE_GROFF =		Yes
CONFIGURE_STYLE =	automake
# builds work with SEPARATE_BUILD, but tests don't.
#SEPARATE_BUILD =	Yes
AUTOCONF_VERSION =	2.59
AUTOMAKE_VERSION =	1.9

# bootstrap needs libtoolize
BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			devel/libtool
LIB_DEPENDS =		graphics/jpeg \
			graphics/png \
			graphics/tiff

CPPFLAGS +=		-I${LOCALBASE}/include/ \
			-I${LOCALBASE}/include/gtk-2.0
LDFLAGS +=		-L${LOCALBASE}/lib \
			-L${LOCALBASE}/lib/gtk-2.0
CONFIGURE_ARGS +=	CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}" \
			--without-java

pre-configure:
	cd ${WRKSRC}; AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} /bin/sh ./bootstrap

.include <bsd.port.mk>
