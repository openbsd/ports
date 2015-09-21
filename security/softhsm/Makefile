# $OpenBSD: Makefile,v 1.3 2015/09/21 13:24:46 sthen Exp $

PORTROACH=	limit:^1\.

SHARED_ONLY=	Yes

COMMENT=	software PKCS\#11 cryptographic token

DISTNAME=	softhsm-1.3.7

REVISION=	0

CATEGORIES=	security

HOMEPAGE=	http://www.opendnssec.org/softhsm/

MAINTAINER=	Patrik Lundin <patrik@sigterm.se>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += botan-1.10 bz2 c crypto gmp m pthread sqlite3 stdc++ z

MASTER_SITES=	http://dist.opendnssec.org/source/

LIB_DEPENDS=	security/botan

FAKE_FLAGS=     sysconfdir=${PREFIX}/share/examples/softhsm

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-botan="${LOCALBASE}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/softhsm
	cd ${WRKSRC}; ${INSTALL_DATA} LICENSE ${PREFIX}/share/doc/softhsm
	rm ${PREFIX}/lib/softhsm/libsofthsm.*a
	${INSTALL_DATA} ${FILESDIR}/softhsm.module \
		${PREFIX}/share/examples/softhsm

.include <bsd.port.mk>
