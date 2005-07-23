# $OpenBSD: Makefile,v 1.1.1.1 2005/07/23 07:53:43 aanriot Exp $

COMMENT=	"Smart, easy and powerful way to access/create XML files/datas"

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

BUILD_DEPENDS=	::textproc/p5-Object-MultiType
RUN_DEPENDS=	${BUILD_DEPENDS}

PKG_ARCH=	*

.include <bsd.port.mk>
