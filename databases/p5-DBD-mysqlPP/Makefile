# $OpenBSD: Makefile,v 1.4 2003/01/28 18:20:37 wilfried Exp $

COMMENT=		"Pure Perl MySQL driver for the Perl DBI"

VERSION=		0.04
DISTNAME=		DBD-mysqlPP-${VERSION}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		databases perl5

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=DBD/}

BUILD_DEPENDS=		:p5-DBI->=1.14:databases/p5-DBI \
			:p5-Net-MySQL->=0.08:net/p5-Net-MySQL
RUN_DEPENDS=		:p5-DBI->=1.14:databases/p5-DBI \
			:p5-Net-MySQL->=0.08:net/p5-Net-MySQL

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
