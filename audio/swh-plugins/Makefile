# $OpenBSD: Makefile,v 1.1.1.1 2010/10/24 10:32:48 jakemsr Exp $

SHARED_ONLY =		Yes

COMMENT =		LADSPA plugins from Steve Harris
DISTNAME =		swh-plugins-0.4.15
CATEGORIES =		audio

HOMEPAGE =		http://plugin.org.uk/

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		fftw3f m

MASTER_SITES =		${HOMEPAGE}releases/0.4.15/

BUILD_DEPENDS =		::audio/ladspa \
			::devel/libtool
LIB_DEPENDS =		:fftw3-float-*:math/fftw3,float

USE_LIBTOOL =		Yes

AUTOMAKE_VERSION =	1.8
AUTOCONF_VERSION =	2.59
CONFIGURE_STYLE =	autoconf automake
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"

CFLAGS +=		-fPIC

# only "translation" is en_GB
CONFIGURE_ARGS +=	--disable-nls

AUTO_ENV =	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	rm ${WRKSRC}/acconfig.h ${WRKSRC}/ladspa.h
	cd ${WRKSRC}; ${AUTO_ENV} aclocal -I . -I m4

pre-configure:
	cd ${WRKSRC}; ${AUTO_ENV} automake --foreign --add-missing

.include <bsd.port.mk>
