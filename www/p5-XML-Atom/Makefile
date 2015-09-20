# $OpenBSD: Makefile,v 1.11 2015/09/20 09:34:38 benoit Exp $

COMMENT= 	Atom RSS protocol for perl

MODULES=	cpan

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
