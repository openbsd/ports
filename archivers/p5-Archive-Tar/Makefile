# $OpenBSD: Makefile,v 1.14 2005/12/20 07:37:59 steven Exp $

COMMENT=	"perl interface to tar archives"
DISTNAME=	Archive-Tar-1.26
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	archivers perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Archive/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-IO-Zlib->=1.01:archivers/p5-IO-Zlib \
		:p5-IO-String->=1.05:devel/p5-IO-String \
		:p5-Text-Diff-*:textproc/p5-Text-Diff
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
