# $OpenBSD: Makefile,v 1.1.1.1 2009/04/19 11:14:34 sthen Exp $

COMMENT =		library for processing panoramic images
DISTNAME =		libpano13-2.9.14_beta2
PKGNAME =		${DISTNAME:S/_beta/b/}
WRKDIST =		${WRKDIR}/${DISTNAME:C/_.*//}

SHARED_LIBS +=		pano13               0.0

CATEGORIES =		graphics
HOMEPAGE =		http://panotools.sourceforge.net/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c m z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=panotools/}

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	automake
# builds work with SEPARATE_BUILD, but tests don't.
#SEPARATE_BUILD =	simple
AUTOCONF_VERSION =	2.59
AUTOMAKE_VERSION =	1.9

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS}
LIB_DEPENDS =		jpeg::graphics/jpeg \
			png::graphics/png \
			tiff::graphics/tiff

CPPFLAGS +=		-I${LOCALBASE}/include/ \
			-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include/gtk-2.0
LDFLAGS +=		-L${LOCALBASE}/lib \
			-L${LOCALBASE}/lib/gtk-2.0
CONFIGURE_ARGS +=	CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}" \
			--without-java

pre-configure:
	cd ${WRKSRC}; AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} ${SH} ./bootstrap

.include <bsd.port.mk>
