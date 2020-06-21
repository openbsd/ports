# $OpenBSD: Makefile,v 1.58 2020/06/21 22:08:55 gsoares Exp $

COMMENT =		C/C++ static checker

DISTNAME =		cppcheck-2.1

CATEGORIES =		devel

HOMEPAGE =		http://cppcheck.sourceforge.net/

MAINTAINER =		Gleydson Soares <gsoares@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		c execinfo m pcre ${COMPILER_LIBCXX}

BUILD_DEPENDS =		textproc/docbook-xsl

LIB_DEPENDS =		devel/pcre \
			devel/libexecinfo

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cppcheck/}

ALL_TARGET =		cppcheck
TEST_TARGET =		test
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

# -Ilib before PREFIX/include to avoid picking up header from devel/check
MAKE_FLAGS =		BIN=${PREFIX}/bin HAVE_RULES=yes \
			FILESDIR=${PREFIX}/share/cppcheck \
			CXX="${CXX}" CXXFLAGS="${CXXFLAGS} -std=c++11" \
			CPPFLAGS="-DTIXML_USE_STL -Ilib -I${PREFIX}/include" \
			LDFLAGS="-L${PREFIX}/lib -lpcre -lexecinfo"

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

COMPILER =		base-clang ports-gcc
MODPY_RUNDEP =		No
CONFIGURE_STYLE =	none

USE_GMAKE =		Yes

pre-configure:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-build:
	cd ${WRKSRC} && \
	${PREFIX}/bin/xsltproc --novalid --nonet --param man.charmap.use.subset "0" \
	${PREFIX}/share/xsl/docbook/manpages/docbook.xsl \
	${WRKSRC}/man/cppcheck.1.xml

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/cppcheck/cfg
	@cp ${WRKSRC}/cfg/* ${PREFIX}/share/cppcheck/cfg/
	${INSTALL_PROGRAM} ${WRKSRC}/cppcheck ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/cppcheck.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
