# $OpenBSD: Makefile,v 1.9 2005/11/26 17:43:11 alek Exp $

COMMENT=	"perl interface to ZIP files"
DISTNAME=	Archive-Zip-1.16
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Archive/}

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Compress-Zlib-*:archivers/p5-Compress-Zlib
REGRESS_DEPENDS=${RUN_DEPENDS} \
		:zip-*:archivers/zip \
		::devel/p5-Test-Pod

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
