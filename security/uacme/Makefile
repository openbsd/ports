# $OpenBSD: Makefile,v 1.2 2020/05/14 17:07:00 sthen Exp $

COMMENT=	lightweight C ACMEv2 client, uses external authenticators

V=		1.3
REVISION=	0
GH_ACCOUNT=	ndilieto
GH_PROJECT=	uacme
GH_TAGNAME=	upstream/$V
DISTNAME=	uacme-$V
WRKDIST=	${WRKDIR}/uacme-upstream-$V

CATEGORIES=	security www

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c curl ev gnutls pthread

CONFIGURE_STYLE= gnu

# can also use mbedTLS or OpenSSL 1.1.1 - requires ECDSA_SIG_get0_[rs],
# EC_POINT_get_affine_coordinates, RSA_get0_[ne], ASN1_TIME_diff which
# libressl doesn't have yet
LIB_DEPENDS=	devel/libev \
		net/curl \
		security/gnutls
BUILD_DEPENDS=	textproc/asciidoc
USE_GMAKE=	Yes

.include <bsd.port.mk>
