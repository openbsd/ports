COMMENT =		recurrent neural network for audio noise reduction
V =			0.2
DISTNAME =		rnnoise-${V}
CATEGORIES =		audio
REVISION =		0

SHARED_LIBS =		rnnoise	0.1	# 4.1

HOMEPAGE =		https://jmvalin.ca/demo/rnnoise
SITES =			https://github.com/xiph/rnnoise/releases/download/v${V}/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# First upstream commit "Fix compilation errors." after release tag.
# Could use DIST_TUPLE for that, but then we generate a Makefile that
# fails to build...
SITES.fix =		https://github.com/xiph/rnnoise/commit/
PATCHFILES.fix =	fix-build-{}372f7b4b76cde4ca1ec4605353dd17898a99de38.patch
PATCH_DIST_STRIP =	-p1

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
