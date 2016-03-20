# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:09 naddy Exp $

COMMENT=	DBI driver for LDAP databases

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	DBD-LDAP-0.22

CATEGORIES=	databases perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-ldap

.include <bsd.port.mk>
