# $OpenBSD: Makefile,v 1.3 2006/07/13 07:26:44 steven Exp $

COMMENT=	"handles various Japanese charsets"

DISTNAME=	Jcode-2.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters japanese perl5

HOMEPAGE=	http://openlab.ring.gr.jp/Jcode/

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=../by-authors/id/D/DA/DANKOGAI/}

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
