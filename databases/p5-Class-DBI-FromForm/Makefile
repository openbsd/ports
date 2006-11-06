# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 12:15:30 espie Exp $

COMMENT=	"update Class:DBI data from html forms"

DISTNAME=	Class-DBI-FromForm-0.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www databases perl5

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

CONFIGURE_STYLE=perl

# XXX note this can retrieve data from several sources
RUN_DEPENDS=	::databases/p5-Class-DBI

PKG_ARCH=	*

.include <bsd.port.mk>
