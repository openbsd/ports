# $OpenBSD: Makefile,v 1.16 2007/01/16 17:52:06 simon Exp $

COMMENT=	"DBI persistent connection, authentication and authorization"

MODULES=	cpan
DISTNAME=	Apache-DBI-0.94
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www databases

RUN_DEPENDS=	:mod_perl-*:www/mod_perl \
		:p5-DBI-*:databases/p5-DBI

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
