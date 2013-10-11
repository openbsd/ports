# $OpenBSD: Makefile,v 1.8 2013/10/11 23:48:20 naddy Exp $

COMMENT=	DBI driver for LDAP databases

MODULES=	cpan

DISTNAME=	DBD-LDAP-0.20

CATEGORIES=	databases perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-ldap

.include <bsd.port.mk>
