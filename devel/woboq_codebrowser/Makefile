COMMENT =	generator for the woboq code browser

DISTNAME =	woboq_codebrowser-2.1pl20231117

GH_ACCOUNT =	KDAB
GH_PROJECT =	codebrowser
# support LLVM version we have in ports
GH_COMMIT =	1808e96d4c62417952389d536576d53bb6da4053

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
WANTLIB =		${COMPILER_LIBCXX} c m llvm16/lib/clang-cpp

COMPILER =		base-clang ports-clang

MODULES =		devel/cmake \
			lang/clang
LIB_DEPENDS =		${MODCLANG_LIB_DEPENDS}
MODCLANG_RUNDEP =	Yes

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/woboq_codebrowser
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/woboq_codebrowser

.include <bsd.port.mk>
