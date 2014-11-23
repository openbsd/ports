# $OpenBSD: Makefile,v 1.15 2014/11/23 19:35:45 benoit Exp $

COMMENT=		Pure Perl MySQL driver for the Perl DBI

DISTNAME =		DBD-mysqlPP-0.07
CATEGORIES=		databases
MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		databases/p5-DBI>=1.14 \
			net/p5-Net-MySQL>=0.08
RUN_DEPENDS=		databases/p5-DBI>=1.14 \
			net/p5-Net-MySQL>=0.08

.include <bsd.port.mk>
