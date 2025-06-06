COMMENT =		friendly interactive shell

V =			3.7.1

DISTNAME =		fish-$V
REVISION =		4

CATEGORIES =		shells

MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

HOMEPAGE =		https://fishshell.com/

# GPLv2 only
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.tar.xz

WANTLIB += ${COMPILER_LIBCXX} c curses intl m pcre2-32

SITES =		https://github.com/fish-shell/fish-shell/releases/download/${V}/

SUBST_VARS +=		RUST_COMMENT

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			textproc/py-sphinx

LIB_DEPENDS =		devel/pcre2 \
			devel/gettext,-runtime

RUN_DEPENDS =		devel/desktop-file-utils

MODPY_ADJ_FILES =	share/tools/create_manpage_completions.py \
			share/tools/deroff.py \
			share/tools/web_config/webconfig.py

MAKE_FLAGS =		V=1

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

PORTHOME =		${WRKDIR}

# Test #96: check-completions.fish fails on systems without synaptics
# driver loaded.

TEST_DEPENDS =		sysutils/coreutils \
			${PKGPATH}=${V}

do-test:
	ln -fs ${LOCALBASE}/bin/ghead ${WRKDIR}/bin/head
	${MODCMAKE_BUILD_TARGET} -t ${TEST_TARGET}

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/fish/tools
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fish
	mv ${PREFIX}/etc/fish/config.fish ${PREFIX}/share/examples/fish/
	rm -Rf ${PREFIX}/etc/
	rmdir ${PREFIX}/share/doc/fish/_sources

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
RUST_COMMENT =		"@comment "
.else
RUST_COMMENT =
.endif

.include <bsd.port.mk>
