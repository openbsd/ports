# $OpenBSD: Makefile,v 1.14 2013/03/11 02:52:06 espie Exp $

COMMENT=		Pure Perl MySQL driver for the Perl DBI

DISTNAME=		DBD-mysqlPP-0.06
REVISION=		0
CATEGORIES=		databases
MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		databases/p5-DBI>=1.14 \
			net/p5-Net-MySQL>=0.08
RUN_DEPENDS=		databases/p5-DBI>=1.14 \
			net/p5-Net-MySQL>=0.08

.include <bsd.port.mk>
