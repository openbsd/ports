# $OpenBSD: Makefile,v 1.13 2014/09/17 11:58:31 sthen Exp $

# as error: ``operation combines symbols in different segments''
# (known toolchain problem) - if fixing, re-enable in devel/cmake/Makefile
# and devel/cmake/cmake.port.mk.
NOT_FOR_ARCHS=		m88k

COMMENT =		small build system with a focus on speed

V =			1.5.1
GH_ACCOUNT =		martine
GH_PROJECT =		ninja
GH_TAGNAME =		v$V
GH_COMMIT =		85e13c163d0129216fb382df6a53d11393c4c0c2
DISTNAME =		${GH_PROJECT}-$V

CATEGORIES =		devel
HOMEPAGE =		http://martine.github.io/ninja/
MAINTAINER =		Matthew Dempsky <matthew@dempsky.org>

# Apache License v2.0
PERMIT_PACKAGE_CDROM =	Yes

# c>=68.1 needed for ppoll
WANTLIB =		c>=68.1 m stdc++

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
