# $OpenBSD: Makefile,v 1.5 2022/01/03 21:35:48 jca Exp $

BROKEN =	needs an update for LLVM 13

COMMENT =	generator for the woboq code browser

DISTNAME =	woboq_codebrowser-2.1pl2

GH_ACCOUNT =	woboq
GH_PROJECT =	woboq_codebrowser
# support LLVM version we have in ports
GH_COMMIT =	19b823ba36993d7ca2e06cbebcac39fb1c8059f3

CATEGORIES =	devel

HOMEPAGE =	https://woboq.com/codebrowser.html

# Commercial or CC-BY-NC-SA 3.0
# (you may not use the material for commercial purposes)
#
# https://woboq.com/codebrowser.html
# "If you are interested in hosting a browsable version of your own C/C++
# source code on your website or intranet, you can purchase a license of
# our code browser generator."
#
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-clang

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/llvm
RUN_DEPENDS =		devel/llvm

NO_TEST =		Yes

SUBST_VARS +=		VARBASE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${GH_PROJECT}
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/${GH_PROJECT}

.include <bsd.port.mk>
