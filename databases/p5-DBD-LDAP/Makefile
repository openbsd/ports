# $OpenBSD: Makefile,v 1.7 2013/03/11 02:52:06 espie Exp $

COMMENT=	DBI driver for LDAP databases

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	DBD-LDAP-0.20

CATEGORIES=	databases perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-ldap

.include <bsd.port.mk>
