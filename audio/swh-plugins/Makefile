# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:41 sthen Exp $

COMMENT =		LADSPA plugins from Steve Harris

DISTNAME =		swh-plugins-0.4.15
REVISION =		3
CATEGORIES =		audio

HOMEPAGE =		http://plugin.org.uk/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		fftw3f m pthread

MASTER_SITES =		${HOMEPAGE}/releases/0.4.15/ \
			https://distfiles.nl/

BUILD_DEPENDS =		audio/ladspa
LIB_DEPENDS =		math/fftw3,float


AUTOMAKE_VERSION =	1.9
AUTOCONF_VERSION =	2.59
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"

CFLAGS +=		-fPIC

# only "translation" is en_GB
CONFIGURE_ARGS +=	--disable-nls

post-extract:
	find ${WRKSRC} -type f -name '*.c' -print -execdir perl -pi \
	    -e 's/^void\s+_init\(\)\s+{/void __init() __attribute__((constructor));\nvoid __init() {/;' \
	    -e 's/^void\s+_fini\(\)\s+{/void __fini() __attribute__((destructor));\nvoid __fini() {/;' \
	    {} \;
post-patch:
	rm ${WRKSRC}/acconfig.h ${WRKSRC}/ladspa.h

.include <bsd.port.mk>
