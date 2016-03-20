# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:23 naddy Exp $

COMMENT= 	Atom RSS protocol for perl

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	XML-Atom-0.41
CATEGORIES=	www textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

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

.include <bsd.port.mk>
