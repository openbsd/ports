# $OpenBSD: Makefile,v 1.8 2016/06/25 12:37:55 sthen Exp $

COMMENT =		libv4l userspace library

VERSION =		1.10.1
DISTNAME =		v4l-utils-${VERSION}
PKGNAME =		libv4l-${VERSION}
REVISION =		0

SHARED_LIBS +=	v4l1		0.0 # 0.0
SHARED_LIBS +=	v4l2		0.0 # 0.0
SHARED_LIBS +=	v4l2rds		0.0 # 0.0
SHARED_LIBS +=	v4lconvert	0.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		http://git.linuxtv.org/v4l-utils.git

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c jpeg m pthread

MASTER_SITES =		http://linuxtv.org/downloads/v4l-utils/

EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/argp-standalone
LIB_DEPENDS =		graphics/jpeg>=1.5.0v0

SEPARATE_BUILD =	Yes
LIBTOOL_FLAGS =		--tag=disable-static
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS =	--disable-doxygen-doc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69

.include <bsd.port.mk>
