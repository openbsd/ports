COMMENT =		friendly interactive shell

V =			4.1.1

DISTNAME =		fish-${V}

SITES =			https://github.com/fish-shell/fish-shell/releases/download/${V}/
DIST_TUPLE +=		github fish-shell rust-pcre2 0.2.9-utf32 .

CATEGORIES =		shells

MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

HOMEPAGE =		https://fishshell.com/

# GPLv2 only
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.tar.xz

WANTLIB += ${MODCARGO_WANTLIB} m pcre2-32 pcre2-8

# C
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

SUBST_VARS +=		RUST_COMMENT

# order matters: use default cmake targets.
MODULES =		devel/cmake \
			devel/cargo \
			lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			textproc/py-sphinx

LIB_DEPENDS =		devel/pcre2

MODPY_ADJ_FILES =	share/tools/create_manpage_completions.py \
			share/tools/deroff.py \
			share/tools/web_config/webconfig.py

MAKE_FLAGS =		V=1

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			-DFISH_USE_SYSTEM_PCRE2=ON

CONFIGURE_STYLE =	cmake

PORTHOME =		${WRKDIR}

# Test #96: check-completions.fish fails on systems without synaptics
# driver loaded.

TEST_DEPENDS =		sysutils/coreutils \
			${PKGPATH}=${V}

TEST_TARGET =		fish_run_tests

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/common.rs

pre-configure:
	@${MODCARGO_configure}

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/fish/tools
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fish
	${INSTALL_DATA} ${WRKSRC}/etc/config.fish ${PREFIX}/share/examples/fish/

pre-test:
	ln -fs ${LOCALBASE}/bin/ghead ${WRKDIR}/bin/head

do-test:
	${MODCMAKE_BUILD_TARGET} -t ${TEST_TARGET}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
RUST_COMMENT =
.else
RUST_COMMENT =		"@comment "
.endif

.include "crates.inc"
.include <bsd.port.mk>
