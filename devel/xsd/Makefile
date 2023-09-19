COMMENT =		W3C XML Schema to C++ data binding compiler

V =			4.1.0.a11
DISTNAME =		xsd-${V}+dep
PKGNAME =		xsd-${V}
CATEGORIES =		devel textproc

HOMEPAGE = 		https://www.codesynthesis.com/products/xsd

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv2 with FOSSE exception
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c m xerces-c

SITES =			https://codesynthesis.com/~boris/tmp/xsd/${V}/
EXTRACT_SUFX =		.tar.bz2

# C++11
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		misc/findutils \
			print/ghostscript/gnu \
			shells/bash

LIB_DEPENDS =		textproc/xerces-c>=3

# xsd uses a bundled version of build:
# "massively-parallel build system implemented on top of GNU make"
USE_GMAKE =		Yes
MAKE_FILE =		makefile
ALL_TARGET =		# empty

# all variables listed in ${WRKSRC}/README
MAKE_FLAGS =		AS=${AS:Q} \
			CC=${CC:Q} \
			CFLAGS=${CFLAGS:Q} \
			CXX=${CXX:Q} \
			CXXFLAGS=${CXXFLAGS:Q} \
			LDFLAGS=${LDFLAGS:Q} \
			LIBS=${LIBS:Q} \
			RANLIB=${RANLIB:Q}

# show compiler lines
MAKE_FLAGS +=		verbose=1

XERCES_CFLAGS =		`pkg-config --cflags xerces-c`
CXXFLAGS +=		${XERCES_CFLAGS}

XERCES_LIBS =		`pkg-config --libs xerces-c`
LDFLAGS +=		${XERCES_LIBS}

# using PREFIX in FAKE_FLAGS is not enough
MAKE_FLAGS +=		install_prefix=${DESTDIR}${PREFIX} \
			install_man_dir=${DESTDIR}${PREFIX}/man

post-extract:
	# avoid conflict with C++20 <version> by adding suffix
	mv ${WRKSRC}/libxsd-frontend/version{,.txt}
	mv ${WRKSRC}/libcutl/version{,.txt}

# provide `find ... -printf'
pre-test:
	ln -sf /usr/local/bin/gfind ${WRKDIR}/bin/find
pre-install:
	ln -sf /usr/local/bin/gfind ${WRKDIR}/bin/find

post-install:
	# avoid conflicts with lang/mono's xsd(1)
	cd ${PREFIX} && \
		mv bin/xsd{,cxx} && \
		mv man/man1/xsd{,cxx}.1

.include <bsd.port.mk>
