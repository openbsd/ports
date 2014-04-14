# $OpenBSD: Makefile,v 1.5 2014/04/14 13:51:12 benoit Exp $

COMMENT=	non-blocking I/O as lambda calculus

DISTNAME =	IO-Lambda-1.23
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

RUN_DEPENDS=	devel/p5-Sub-Name \
		net/p5-Net-DNS \
		security/p5-IO-Socket-SSL \
		www/p5-libwww
# Additionally these can be installed:
# 'SNMP'            => 0,     # for IO::Lambda::SNMP
# 'AnyEvent'        => 0,     # for alternative event loop
# 'Authen::NTLM'    => 1.05,  # for HTTP authentication
# 'DBI'             => 0,     # for IO::Lambda::DBI


.include <bsd.port.mk>
