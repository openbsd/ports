# $OpenBSD: Makefile,v 1.24 2015/08/19 07:40:03 jasper Exp $

COMMENT=	perl module to build DOM Level 1 structures

MODULES=	cpan
DISTNAME=	XML-DOM-1.45
CATEGORIES=	textproc

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.30	\
		textproc/p5-Libxml		\
		textproc/p5-XML-RegExp	\
		www/p5-libwww

.include <bsd.port.mk>
