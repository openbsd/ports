# $OpenBSD: Makefile,v 1.1.1.1 2004/12/21 20:44:28 sturm Exp $

COMMENT=	"virtual browser that retries on errors"

DISTNAME=	LWP-UserAgent-Determined-1.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=LWP/}

RUN_DEPENDS=	::www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
