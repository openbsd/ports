# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:53 sthen Exp $

COMMENT=	SAX2 driver based on expat

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	XML-SAX-Expat-0.51
CATEGORIES=	textproc
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-SAX \
		textproc/p5-XML-Parser \
		textproc/p5-XML-NamespaceSupport

.include <bsd.port.mk>
