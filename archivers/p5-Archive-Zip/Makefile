# $OpenBSD: Makefile,v 1.8 2005/07/06 23:18:09 jolan Exp $

COMMENT=	"perl interface to ZIP files"
DISTNAME=	Archive-Zip-1.14
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Archive/}

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Compress-Zlib-*:archivers/p5-Compress-Zlib
REGRESS_DEPENDS=${RUN_DEPENDS} \
		:zip-*:archivers/zip

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
