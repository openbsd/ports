# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:10 naddy Exp $

COMMENT=		Pure Perl MySQL driver for the Perl DBI

DISTNAME =		DBD-mysqlPP-0.07
CATEGORIES=		databases
MODULES=		cpan
PKG_ARCH=		*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		databases/p5-DBI>=1.14 \
			net/p5-Net-MySQL>=0.08
RUN_DEPENDS=		databases/p5-DBI>=1.14 \
			net/p5-Net-MySQL>=0.08

.include <bsd.port.mk>
