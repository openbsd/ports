# $OpenBSD: Makefile,v 1.10 2004/11/11 17:14:15 naddy Exp $

COMMENT=	"perl interface to tar archives"
VERSION=	1.21
DISTNAME=	Archive-Tar-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Archive/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-IO-Zlib->=1.01:archivers/p5-IO-Zlib \
		:p5-IO-String->=1.05:devel/p5-IO-String
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
