# $OpenBSD: Makefile,v 1.3 2006/06/19 06:32:41 jasper Exp $

COMMENT=	"portable multitasking and networking framework for perl"

DISTNAME=	POE-0.3502
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

HOMEPAGE=	http://poe.perl.org/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=POE/} 

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic and GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=perl
CONFIGURE_ARGS=	--default

RUN_DEPENDS=	::www/p5-libwww
REGRESS_DEPENDS=${RUN_DEPENDS}

PKG_ARCH=	*

.include <bsd.port.mk>
