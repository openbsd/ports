# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:24 ajacoutot Exp $

COMMENT=	DBI driver for LDAP databases

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	DBD-LDAP-0.09
REVISION=	0

CATEGORIES=	databases perl5

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-ldap

.include <bsd.port.mk>
