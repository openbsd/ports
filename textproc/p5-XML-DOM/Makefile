# $OpenBSD: Makefile,v 1.28 2019/11/03 14:07:45 jasper Exp $

COMMENT=	perl module to build DOM Level 1 structures

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-DOM-1.46
REVISION=	0
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.30	\
		textproc/p5-Libxml		\
		textproc/p5-XML-RegExp	\
		www/p5-libwww

.include <bsd.port.mk>
