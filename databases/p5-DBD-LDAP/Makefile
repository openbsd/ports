# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:35 sthen Exp $

COMMENT=	DBI driver for LDAP databases

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	DBD-LDAP-1.00
REVISION=	0

CATEGORIES=	databases perl5

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-ldap

.include <bsd.port.mk>
