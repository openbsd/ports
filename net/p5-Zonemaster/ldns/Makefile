# $OpenBSD: Makefile,v 1.4 2019/05/28 13:39:16 sthen Exp $

COMMENT =	module to interface the DNS resolver using the ldns library

MODULES =	cpan
CPAN_AUTHOR =	ZNMSTR
DISTNAME =	Zonemaster-LDNS-2.0.1
CATEGORIES =	net

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto idn ldns perl

BUILD_DEPENDS =	devel/p5-Devel-CheckLib
LIB_DEPENDS =	devel/libidn \
		net/ldns/libldns
TEST_DEPENDS =	devel/p5-Test-Fatal

CONFIGURE_ARGS = --no-internal-ldns

# XXX something is wrong passing libs from makemaker to the generated
# Makefile, bodge it for now
MAKE_FLAGS=	LDLOADLIBS="-lcrypto -lldns -lidn"

.include <bsd.port.mk>
