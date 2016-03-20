# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:12 naddy Exp $

COMMENT=	SAX2 writer

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	XML-SAX-Writer-0.56
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-SAX \
		textproc/p5-XML-NamespaceSupport \
		textproc/p5-XML-Filter-BufferText

.include <bsd.port.mk>
