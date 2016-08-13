# $OpenBSD: Makefile,v 1.16 2016/08/13 19:22:05 jasper Exp $

COMMENT =		command line double-entry accounting ledger

GH_TAGNAME =		v3.1.1
GH_ACCOUNT =		ledger
GH_PROJECT =		ledger

SHARED_LIBS +=  ledger                    0.0 # 3.0

CATEGORIES =		productivity

HOMEPAGE =		http://www.ledger-cli.org/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_regex-mt boost_system-mt boost_unit_test_framework-mt
WANTLIB += c gmp m mpfr pthread

MODGCC4_ARCHS =		*
MODGCC4_LANGS +=	c++

MODULES =		devel/cmake \
			lang/python \
			gcc4

BUILD_DEPENDS =		devel/utfcpp
LIB_DEPENDS =		devel/boost \
			devel/gmp \
			devel/mpfr

LIBledger_MAJOR =	${LIBledger_VERSION:R}
LIBledger_MINOR =	${LIBledger_VERSION:E}
SUBST_VARS +=		LIBledger_MAJOR LIBledger_MINOR

# Use this to make sure version.info gets generated, the actual
# installation bits are removed as the remaining .info files are
# not generated...see post-install below.
CONFIGURE_ARGS +=	-DBUILD_DOCS:Bool=On

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/CMakeLists.txt

post-install:
.for i in ledger3 ledger-mode
	cd ${WRKBUILD}/doc/ && \
		cp ${WRKSRC}/doc/$i.texi . && \
		makeinfo --force --no-split -o ${PREFIX}/info/$i.info $i.texi
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ledger/
.for d in LICENSE.md doc/GLOSSARY.md
	${INSTALL_DATA} ${WRKSRC}/$d ${PREFIX}/share/doc/ledger/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ledger
	cd ${WRKSRC}/contrib && umask 022 && pax -rw . ${PREFIX}/share/examples/ledger

.include <bsd.port.mk>
