# $OpenBSD: Makefile,v 1.5 2020/04/06 18:02:21 bluhm Exp $

COMMENT =	Perl XS wrapper for open62541 OPC UA library

DISTNAME =	OPCUA-Open62541-0.007
CPAN_AUTHOR =	BLUHM

CATEGORIES =	misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c m mbedcrypto mbedtls mbedx509 open62541 perl pthread

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Devel-CheckLib
LIB_DEPENDS =		misc/open62541
TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-EOL \
			devel/p5-Test-Exception \
			devel/p5-Test-LeakTrace \
			devel/p5-Test-NoWarnings \
			devel/p5-Test-Perl-Critic \
			devel/p5-Test-Pod>=1.00 \
			devel/p5-Test-Requires \
			devel/p5-Test-Warn \
			net/p5-Test-TCP

.include <bsd.port.mk>
