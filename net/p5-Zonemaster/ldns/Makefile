# $OpenBSD: Makefile,v 1.3 2018/08/28 16:41:12 sthen Exp $

COMMENT =	module to interface the DNS resolver using the ldns library

MODULES =	cpan
CPAN_AUTHOR =	ZNMSTR
DISTNAME =	Zonemaster-LDNS-1.1.0
REVISION =	0
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
