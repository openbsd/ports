# $OpenBSD: Makefile,v 1.2 2006/03/11 14:35:18 steven Exp $

COMMENT=	"generic classes for simplistic handling of XML data"

DISTNAME=	XML-Elemental-2.0
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::textproc/p5-XML-Parser \
		::textproc/p5-XML-SAX
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
