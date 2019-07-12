# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:59 sthen Exp $

COMMENT= 	Atom RSS protocol for perl

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	XML-Atom-0.42
CATEGORIES=	www textproc

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-DateTime \
		devel/p5-DateTime-TimeZone \
		security/p5-Digest-SHA1 \
		textproc/p5-XML-LibXML \
		textproc/p5-XML-XPath \
		www/p5-HTML-Parser \
		www/p5-LWP-Authen-Wsse \
		www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
