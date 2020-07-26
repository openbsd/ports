# $OpenBSD: Makefile,v 1.9 2020/07/26 15:28:10 sthen Exp $

COMMENT=	module to interface the DNS resolver using the ldns library

MODULES=	cpan
CPAN_AUTHOR=	ZNMSTR
DISTNAME=	Zonemaster-LDNS-2.1.0
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE= Yes

WANTLIB += c crypto idn ldns perl

BUILD_DEPENDS=	devel/p5-Devel-CheckLib
LIB_DEPENDS=	devel/libidn \
		net/ldns
TEST_DEPENDS=	devel/p5-Test-Fatal

CONFIGURE_ARGS=	--no-internal-ldns \
		--no-ed25519 \
		--prefix-openssl=${LOCALBASE} # actually for -lldns -lidn not openssl

.include <bsd.port.mk>
