# $OpenBSD: Makefile,v 1.11 2021/12/07 09:50:29 sthen Exp $

COMMENT=	module to interface the DNS resolver using the ldns library

MODULES=	cpan
CPAN_AUTHOR=	ZNMSTR
DISTNAME=	Zonemaster-LDNS-2.2.1
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE= Yes

WANTLIB += c crypto idn ldns perl

BUILD_DEPENDS=	devel/p5-Devel-CheckLib
LIB_DEPENDS=	devel/libidn \
		net/ldns
TEST_DEPENDS=	devel/p5-Test-Fatal

# --no-ed25519: requires openssl 1.1.1 for NID_ED25519 etc.
# --prefix-openssl: actually used for -lldns -lidn not openssl
CONFIGURE_ARGS=	--no-internal-ldns \
		--no-ed25519 \
		--prefix-openssl=${LOCALBASE}

.include <bsd.port.mk>
