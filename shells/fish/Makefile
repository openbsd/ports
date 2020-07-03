# $OpenBSD: Makefile,v 1.16 2020/07/03 21:13:08 sthen Exp $

COMMENT =		friendly interactive shell

V =			3.1.2
DISTNAME =		fish-$V
REVISION =		0

CATEGORIES =		shells

HOMEPAGE =		https://fishshell.com/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses intl m pcre2-32

MASTER_SITES =		https://github.com/fish-shell/fish-shell/releases/download/${V}/

# C++11
COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			textproc/py-sphinx

LIB_DEPENDS =		devel/pcre2 \
			devel/gettext,-runtime

RUN_DEPENDS =		misc/gnugetopt

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES =	share/tools/create_manpage_completions.py \
			share/tools/deroff.py \
			share/tools/web_config/webconfig.py

MAKE_FLAGS =		V=1

CONFIGURE_ARGS =	--without-included-pcre2
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/fish/tools/deroff.py
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/fish/tools/create_manpage_completions.py
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/fish/tools/web_config/webconfig.py
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fish
	mv ${PREFIX}/etc/fish/config.fish ${PREFIX}/share/examples/fish/
	rm -Rf ${PREFIX}/etc/

.include <bsd.port.mk>
