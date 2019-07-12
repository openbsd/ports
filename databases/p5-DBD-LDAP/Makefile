# $OpenBSD: Makefile,v 1.11 2019/07/12 20:43:55 sthen Exp $

COMMENT=	DBI driver for LDAP databases

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	DBD-LDAP-0.22

CATEGORIES=	databases perl5

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-ldap

.include <bsd.port.mk>
