# $OpenBSD: Makefile,v 1.12 2019/11/23 02:29:30 afresh1 Exp $

COMMENT=	DBI driver for LDAP databases

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	DBD-LDAP-1.00

CATEGORIES=	databases perl5

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-ldap

.include <bsd.port.mk>
