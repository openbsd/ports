# $OpenBSD: Makefile,v 1.12 2020/07/03 21:44:56 sthen Exp $

COMMENT =	non-blocking I/O as lambda calculus

DISTNAME =	IO-Lambda-1.30
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

RUN_DEPENDS =	devel/p5-Sub-Name \
		net/p5-Net-DNS \
		security/p5-IO-Socket-SSL \
		www/p5-libwww
# Additionally these can be installed:
# 'SNMP'            => 0,     # for IO::Lambda::SNMP
# 'AnyEvent'        => 0,     # for alternative event loop
# 'Authen::NTLM'    => 1.05,  # for HTTP authentication
# 'DBI'             => 0,     # for IO::Lambda::DBI

.include <bsd.port.mk>
