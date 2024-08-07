COMMENT =	software PKCS\#11 cryptographic token

DISTNAME =	softhsm-2.6.1
PKGNAME =	${DISTNAME:S/-/2-/}
REVISION =	1

CATEGORIES =	security

HOMEPAGE =	http://www.opendnssec.org/softhsm/

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} botan-2 bz2 c lzma m sqlite3 z

SITES =		http://dist.opendnssec.org/source/

COMPILER =	base-clang ports-gcc base-gcc

BUILD_DEPENDS = devel/cppunit \
		security/p11-kit

LIB_DEPENDS =	databases/sqlite3 \
		security/botan2

TEST_DEPENDS =	${BUILD_DEPENDS}

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/softhsm2

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-crypto-backend=botan \
			--with-botan=${PREFIX} \
			--with-migrate \
			--with-objectstore-backend-db \
			--with-sqlite3=${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/softhsm2
	cd ${WRKSRC}; ${INSTALL_DATA} LICENSE ${PREFIX}/share/doc/softhsm2
	rm ${PREFIX}/lib/softhsm/libsofthsm2.*a

.include <bsd.port.mk>
