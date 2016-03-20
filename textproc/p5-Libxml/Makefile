# $OpenBSD: Makefile,v 1.14 2016/03/20 19:57:05 naddy Exp $

COMMENT=	perl module collection for working with XML

MODULES=	cpan
PKG_ARCH=	*
VERSION=	0.08
DISTNAME=	libxml-perl-${VERSION}
PKGNAME=	p5-Libxml-${VERSION}
REVISION=	2
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.19
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
