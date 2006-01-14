# $OpenBSD: Makefile,v 1.3 2006/01/14 10:05:10 steven Exp $

COMMENT=	"perl interface to the SASL auth framework"

DISTNAME=	Authen-SASL-2.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# same license as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Authen/}

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
