# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:12 naddy Exp $

COMMENT=	SAX2 driver based on expat

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	XML-SAX-Expat-0.51
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-SAX \
		textproc/p5-XML-Parser \
		textproc/p5-XML-NamespaceSupport

.include <bsd.port.mk>
