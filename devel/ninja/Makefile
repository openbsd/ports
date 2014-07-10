# $OpenBSD: Makefile,v 1.9 2014/07/10 20:13:55 sthen Exp $

COMMENT =		small build system with a focus on speed
GH_VER =		v1.4.0
DISTNAME =		ninja-${GH_VER:S/v//}
CATEGORIES =		devel
HOMEPAGE =		http://martine.github.io/ninja/
MAINTAINER =		Matthew Dempsky <matthew@dempsky.org>

# Apache License v2.0
PERMIT_PACKAGE_CDROM =	Yes

# c>=68.1 needed for ppoll
WANTLIB =		c>=68.1 m stdc++

MASTER_SITES =		https://github.com/martine/ninja/archive/
DISTFILES =		${DISTNAME}{${GH_VER}}${EXTRACT_SUFX}

MODULES =		lang/python

MODPY_ADJ_FILES =	bootstrap.py \
			configure.py \
			src/browse.py

# Not strictly required, but will be used if available.  Included as a build
# dependency to ensure consistent builds.
BUILD_DEPENDS =		devel/re2c

MAKE_ENV =		CXX="${CXX}"

do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
	    ${MODPY_BIN} ./bootstrap.py --verbose

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ninja ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ninja
	${INSTALL_DATA} ${WRKSRC}/doc/manual.asciidoc ${PREFIX}/share/doc/ninja
	${INSTALL_DATA_DIR} ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/bash-completion ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/ninja-mode.el ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/ninja.vim ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/ninja_syntax.py ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/zsh-completion ${PREFIX}/share/ninja

.include <bsd.port.mk>
