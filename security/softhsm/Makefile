# $OpenBSD: Makefile,v 1.13 2019/07/12 20:49:36 sthen Exp $

PORTROACH=	limit:^1\.
PORTROACH_COMMENT=	the 2.x version has a different user interface

COMMENT=	software PKCS\#11 cryptographic token

DISTNAME=	softhsm-1.3.8
REVISION=	2

CATEGORIES=	security

HOMEPAGE=	http://www.opendnssec.org/softhsm/

MAINTAINER=	Pavel Korovin <pvk@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += botan-1.10 bz2 c crypto gmp m pthread sqlite3 ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://dist.opendnssec.org/source/

LIB_DEPENDS=	security/botan \
		databases/sqlite3

FAKE_FLAGS=     sysconfdir=${PREFIX}/share/examples/softhsm

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-botan="${LOCALBASE}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/softhsm
	cd ${WRKSRC}; ${INSTALL_DATA} LICENSE ${PREFIX}/share/doc/softhsm
	rm ${PREFIX}/lib/softhsm/libsofthsm.*a
	${INSTALL_DATA} ${FILESDIR}/softhsm.module \
		${PREFIX}/share/examples/softhsm

.include <bsd.port.mk>
