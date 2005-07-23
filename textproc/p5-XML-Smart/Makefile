# $OpenBSD: Makefile,v 1.2 2005/07/23 14:15:38 aanriot Exp $

COMMENT=	"access/create XML files/datas easily"

DISTNAME=	XML-Smart-1.6.9
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Okan Demirmen <okan@demirmen.com>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

CONFIGURE_STYLE=perl

BUILD_DEPENDS=	${RUN_DEPENDS}                                                 
RUN_DEPENDS=	::textproc/p5-Object-MultiType

PKG_ARCH=	*

.include <bsd.port.mk>
