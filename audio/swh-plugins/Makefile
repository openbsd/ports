# $OpenBSD: Makefile,v 1.8 2013/03/21 08:45:13 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		LADSPA plugins from Steve Harris

DISTNAME =		swh-plugins-0.4.15
REVISION =		1
CATEGORIES =		audio

HOMEPAGE =		http://plugin.org.uk/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		fftw3f m

MASTER_SITES =		${HOMEPAGE}/releases/0.4.15/ \
			http://distfiles.nl/

BUILD_DEPENDS =		audio/ladspa \
			devel/libtool
LIB_DEPENDS =		math/fftw3,float


AUTOMAKE_VERSION =	1.9
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
