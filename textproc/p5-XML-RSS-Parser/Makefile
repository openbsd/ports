# $OpenBSD: Makefile,v 1.1.1.1 2004/12/21 21:51:21 sturm Exp $

COMMENT=	"liberal object-oriented parser for RSS feeds"

DISTNAME=	XML-RSS-Parser-2.15
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser \
		::devel/p5-Class-XPath
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
