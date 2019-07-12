# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:09 sthen Exp $

COMMENT=	SAX2 driver based on expat

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	XML-SAX-Expat-0.51
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-SAX \
		textproc/p5-XML-Parser \
		textproc/p5-XML-NamespaceSupport

.include <bsd.port.mk>
