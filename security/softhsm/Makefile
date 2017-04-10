# $OpenBSD: Makefile,v 1.8 2017/04/10 11:46:33 sthen Exp $

PORTROACH=	limit:^1\.
PORTROACH_COMMENT=	the 2.x version has a different user interface

COMMENT=	software PKCS\#11 cryptographic token

DISTNAME=	softhsm-1.3.8

CATEGORIES=	security

HOMEPAGE=	http://www.opendnssec.org/softhsm/

MAINTAINER=	Patrik Lundin <patrik@sigterm.se>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += botan-1.10 bz2 c crypto gmp m pthread sqlite3 ${LIBCXX} z

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
