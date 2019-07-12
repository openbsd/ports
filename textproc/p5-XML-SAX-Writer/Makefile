# $OpenBSD: Makefile,v 1.12 2019/07/12 20:50:09 sthen Exp $

COMMENT=	SAX2 writer

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	XML-SAX-Writer-0.57

CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-Filter-BufferText>=1.0 \
		textproc/p5-XML-NamespaceSupport>=1.0 \
		textproc/p5-XML-SAX-Base>=1.01

.include <bsd.port.mk>
