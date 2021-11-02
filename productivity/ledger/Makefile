# $OpenBSD: Makefile,v 1.31 2021/11/02 00:01:54 sthen Exp $

COMMENT =		command line double-entry accounting ledger

GH_TAGNAME =		v3.2.1
GH_ACCOUNT =		ledger
GH_PROJECT =		ledger
REVISION =		0

SHARED_LIBS +=  ledger                    1.0 # 3.0

CATEGORIES =		productivity

HOMEPAGE =		https://www.ledger-cli.org/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_regex-mt boost_system-mt boost_unit_test_framework-mt
WANTLIB += c gmp icuuc m mpfr pthread ${COMPILER_LIBCXX}

MODULES =		devel/cmake \
			lang/python
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/utfcpp
LIB_DEPENDS =		devel/boost \
			devel/gmp \
			devel/mpfr

LIBledger_MAJOR =	${LIBledger_VERSION:R}
LIBledger_MINOR =	${LIBledger_VERSION:E}
SUBST_VARS +=		LIBledger_MAJOR LIBledger_MINOR

CONFIGURE_ARGS=		-DUTFCPP_PATH=${LOCALBASE}/include/utfcpp

# Use this to make sure version.info gets generated, the actual
# installation bits are removed as the remaining .info files are
# not generated...see post-install below.
CONFIGURE_ARGS +=	-DBUILD_DOCS:Bool=On

# libedit support requires readline headers that aren't installed on OpenBSD
CONFIGURE_ARGS +=	-DHAVE_EDIT:=Off

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/CMakeLists.txt

post-install:
.for i in ledger3
	cd ${WRKBUILD}/doc/ && \
		cp ${WRKSRC}/doc/$i.texi . && \
		makeinfo --force --no-split -o ${PREFIX}/info/$i.info $i.texi
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ledger/
.for d in LICENSE.md doc/GLOSSARY.md
	${INSTALL_DATA} ${WRKSRC}/$d ${PREFIX}/share/doc/ledger/
.endfor

.include <bsd.port.mk>
