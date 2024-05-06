COMMENT =		command line double-entry accounting ledger

GH_TAGNAME =		v3.3.2
GH_ACCOUNT =		ledger
GH_PROJECT =		ledger
REVISION =		1

SHARED_LIBS +=  ledger                    1.0 # 3.0

CATEGORIES =		productivity

HOMEPAGE =		https://www.ledger-cli.org/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_nowide-mt boost_regex-mt boost_system-mt
WANTLIB += boost_unit_test_framework-mt c gmp m mpfr

MODULES =		devel/cmake \
			lang/python
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/utfcpp>=4.0.5 \
			print/texinfo

LIB_DEPENDS =		devel/boost \
			devel/gmp \
			devel/mpfr

CONFIGURE_ARGS=		-DUTFCPP_PATH=${LOCALBASE}/include/utf8cpp

# Use this to make sure version.info gets generated, the actual
# installation bits are removed as the remaining .info files are
# not generated...see post-install below.
CONFIGURE_ARGS +=	-DBUILD_DOCS:Bool=On

# libedit support requires readline headers that aren't installed on OpenBSD
CONFIGURE_ARGS +=	-DHAVE_EDIT:=Off

post-install:
.for i in ledger3
	cd ${WRKBUILD}/doc/ && \
		cp ${WRKSRC}/doc/$i.texi . && \
		gmakeinfo --force --no-split -o ${PREFIX}/info/$i.info $i.texi
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ledger/
.for d in LICENSE.md doc/GLOSSARY.md
	${INSTALL_DATA} ${WRKSRC}/$d ${PREFIX}/share/doc/ledger/
.endfor

.include <bsd.port.mk>
