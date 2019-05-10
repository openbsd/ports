# $OpenBSD: Makefile,v 1.11 2019/05/10 16:05:18 cwen Exp $

COMMENT=	SAX2 writer

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	XML-SAX-Writer-0.57

CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-Filter-BufferText>=1.0 \
		textproc/p5-XML-NamespaceSupport>=1.0 \
		textproc/p5-XML-SAX-Base>=1.01

.include <bsd.port.mk>
