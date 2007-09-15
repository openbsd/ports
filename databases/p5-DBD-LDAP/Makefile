# $OpenBSD: Makefile,v 1.2 2007/09/15 20:34:01 simon Exp $

COMMENT=	DBI driver for LDAP databases

MODULES=	cpan

DISTNAME=	DBD-LDAP-0.09

CATEGORIES=	databases perl5

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::databases/p5-DBI \
		::databases/p5-ldap

.include <bsd.port.mk>
