# $OpenBSD: Makefile,v 1.13 2012/12/13 16:34:48 naddy Exp $

COMMENT=		Pure Perl MySQL driver for the Perl DBI

DISTNAME=		DBD-mysqlPP-0.06
REVISION=		0
CATEGORIES=		databases
MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		databases/p5-DBI>=1.14 \
			net/p5-Net-MySQL>=0.08
RUN_DEPENDS=		databases/p5-DBI>=1.14 \
			net/p5-Net-MySQL>=0.08

.include <bsd.port.mk>
