# $OpenBSD: Makefile,v 1.3 2016/03/20 19:57:11 naddy Exp $

COMMENT=		extension to add XPath support to XML::DOM

DISTNAME=		XML-DOM-XPath-0.14
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		textproc/p5-XML-DOM \
			textproc/p5-XML-XPathEngine

.include <bsd.port.mk>
