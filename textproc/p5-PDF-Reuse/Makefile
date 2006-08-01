# $OpenBSD: Makefile,v 1.1.1.1 2006/08/01 22:36:21 alek Exp $

COMMENT=	"perl module for manipulating PDF files"

DISTNAME=	PDF-Reuse-0.33
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Sam Smith <S@mSmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=PDF/}

RUN_DEPENDS=	:p5-Compress-Zlib-*:archivers/p5-Compress-Zlib
REGRESS_DEPENDS=${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
