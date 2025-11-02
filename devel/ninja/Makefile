# as error: ``operation combines symbols in different segments''
# (known toolchain problem) - if fixing, re-enable in devel/cmake/Makefile
# and devel/cmake/cmake.port.mk.
NOT_FOR_ARCHS=		m88k

COMMENT =		small build system with a focus on speed

GH_ACCOUNT =		ninja-build
GH_PROJECT =		ninja
GH_TAGNAME =		v1.11.1
# chromium (at least as of 20250218) fails with 1.12.0/1.12.1:
# In file included from ../../net/dns/dns_config_service_posix.cc:44:
# ../../sandbox/policy/switches.h:12:10: fatal error: 'services/screen_ai/buildflags/buildflags.h' file not found
# qt6/qtwebengine and iridium had similar build issues with 1.13.0
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://ninja-build.org/

EPOCH =			1

# Apache License v2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python

MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	configure.py \
			misc/ninja_syntax.py \
			src/browse.py

# Not strictly required, but will be used if available.  Included as a build
# dependency to ensure consistent builds.
BUILD_DEPENDS =		devel/re2c

MAKE_ENV =		CXX="${CXX}"

do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
	${MODPY_BIN} ./configure.py --bootstrap \
	--verbose --with-python=${MODPY_BIN}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ninja ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ninja
	${INSTALL_DATA} ${WRKSRC}/doc/manual.asciidoc ${PREFIX}/share/doc/ninja
	${INSTALL_DATA_DIR} ${PREFIX}/share/ninja
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKSRC}/misc/bash-completion ${PREFIX}/share/bash-completion/completions/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/ninja-mode.el ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/ninja.vim ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/ninja_syntax.py ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/write_fake_manifests.py ${PREFIX}/share/ninja
	${INSTALL_DATA} ${WRKSRC}/misc/measure.py ${PREFIX}/share/ninja
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/misc/zsh-completion ${PREFIX}/share/zsh/site-functions/_ninja

# if updating to 1.12.x+, don't be tempted to switch the ninja build to cmake
# to get tests working - loop: cmake -> jsoncpp -> meson -> ninja -> cmake
do-test:
	@cd ${WRKSRC} && ${SETENV} ${ALL_TEST_ENV} ./ninja ninja_test \
	&& ./ninja_test --gtest_filter=MyTest.Name

.include <bsd.port.mk>
