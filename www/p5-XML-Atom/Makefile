# $OpenBSD: Makefile,v 1.4 2008/12/08 23:23:32 jasper Exp $

COMMENT= 	Atom RSS protocol for perl

MODULES=	cpan

DISTNAME=	XML-Atom-0.32
CATEGORIES=	www textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Data-Inheritable \
		::devel/p5-DateTime \
		::security/p5-Digest-SHA1 \
		::textproc/p5-XML-LibXML \
		::textproc/p5-XML-XPath \
		::www/p5-HTML-Parser \
		::www/p5-LWP-Authen-Wsse \
		::www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
