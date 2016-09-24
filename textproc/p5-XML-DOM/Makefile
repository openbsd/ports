# $OpenBSD: Makefile,v 1.26 2016/09/24 11:01:39 jasper Exp $

COMMENT=	perl module to build DOM Level 1 structures

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-DOM-1.46
CATEGORIES=	textproc

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.30	\
		textproc/p5-Libxml		\
		textproc/p5-XML-RegExp	\
		www/p5-libwww

.include <bsd.port.mk>
