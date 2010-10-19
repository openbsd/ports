# $OpenBSD: Makefile,v 1.20 2010/10/19 08:02:54 espie Exp $

COMMENT=	DBI persistent connection, authentication and authorization

MODULES=	cpan
DISTNAME=	Apache-DBI-0.94
REVISION=	1
CATEGORIES=	www databases
USE_GROFF =	Yes

RUN_DEPENDS=	:mod_perl-*:www/mod_perl \
		:p5-DBI-*:databases/p5-DBI

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
