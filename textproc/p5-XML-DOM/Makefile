# $OpenBSD: Makefile,v 1.29 2020/07/03 21:45:52 sthen Exp $

COMMENT=	perl module to build DOM Level 1 structures

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-DOM-1.46
REVISION=	1
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.30	\
		textproc/p5-Libxml		\
		textproc/p5-XML-RegExp	\
		www/p5-libwww

.include <bsd.port.mk>
