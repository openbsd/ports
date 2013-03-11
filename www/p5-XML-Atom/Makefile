# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:47 espie Exp $

COMMENT= 	Atom RSS protocol for perl

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	XML-Atom-0.37
CATEGORIES=	www textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-DateTime \
		security/p5-Digest-SHA1 \
		textproc/p5-XML-LibXML \
		textproc/p5-XML-XPath \
		www/p5-HTML-Parser \
		www/p5-LWP-Authen-Wsse \
		www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
