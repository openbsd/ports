# $OpenBSD: Makefile,v 1.2 2001/03/29 17:38:59 avsm Exp $

COMMENT=	"perl module for accessing NNTP articles"

DISTNAME=	News-Article-1.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	news perl5
NEED_VERSION=	1.364
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= News

MAINTAINER=	Shell Hung <i@shellhung.org>

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${PERL_MODULES}/PGP/Sign.pm::security/p5-PGP-Sign \
		${PERL_MODULES}/Net/NNTP.pm::net/p5-libnet
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
