# $OpenBSD: Makefile,v 1.3 2020/04/30 18:18:27 pvk Exp $

COMMENT =	software PKCS\#11 cryptographic token

DISTNAME =	softhsm-2.6.1
PKGNAME =	${DISTNAME:S/-/2-/}

CATEGORIES =	security

HOMEPAGE =	http://www.opendnssec.org/softhsm/

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c crypto m sqlite3 z

MASTER_SITES =	http://dist.opendnssec.org/source/

COMPILER =	base-clang ports-gcc base-gcc
BUILD_DEPENDS = devel/cppunit
LIB_DEPENDS =	databases/sqlite3
TEST_DEPENDS =	${BUILD_DEPENDS}

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/softhsm2

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-gost \
			--with-migrate \
			--with-objectstore-backend-db \
			--with-sqlite3=${PREFIX} \
			--with-p11-kit=${PREFIX}/share/examples/softhsm2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/softhsm2
	cd ${WRKSRC}; ${INSTALL_DATA} LICENSE ${PREFIX}/share/doc/softhsm2
	rm ${PREFIX}/lib/softhsm/libsofthsm2.*a

.include <bsd.port.mk>
