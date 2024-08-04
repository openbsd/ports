COMMENT =		recurrent neural network for audio noise reduction
V =			0.2
DISTNAME =		rnnoise-${V}
CATEGORIES =		audio

SHARED_LIBS =		rnnoise	0.1	# 4.1

HOMEPAGE =		https://jmvalin.ca/demo/rnnoise
SITES =			https://github.com/xiph/rnnoise/releases/download/v${V}/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		m

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--disable-doc \
			--disable-examples \
			--disable-x86-rtcd
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

EXAMPLESDIR =		${PREFIX}/share/examples/rnnoise

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/rnnoise_demo.c ${EXAMPLESDIR}/

.include <bsd.port.mk>
