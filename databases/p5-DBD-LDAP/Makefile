# $OpenBSD: Makefile,v 1.9 2015/06/04 04:46:48 ajacoutot Exp $

COMMENT=	DBI driver for LDAP databases

MODULES=	cpan

DISTNAME=	DBD-LDAP-0.22

CATEGORIES=	databases perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-ldap

.include <bsd.port.mk>
