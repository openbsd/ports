# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:46 sthen Exp $

COMMENT=	perl module collection for working with XML

MODULES=	cpan
PKG_ARCH=	*
VERSION=	0.08
DISTNAME=	libxml-perl-${VERSION}
PKGNAME=	p5-Libxml-${VERSION}
REVISION=	3
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.19
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
