# $OpenBSD: Makefile,v 1.12 2020/05/15 09:34:29 bluhm Exp $

COMMENT =	Perl XS wrapper for open62541 OPC UA library

DISTNAME =	OPCUA-Open62541-0.014
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
			devel/p5-Test-Strict \
			devel/p5-Test-Warn \
			devel/p5-YAML-Tiny \
			net/p5-Test-TCP

.include <bsd.port.mk>
