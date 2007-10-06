# $OpenBSD: Makefile,v 1.1.1.1 2007/10/06 15:27:05 simon Exp $

COMMENT= 	Atom feed and API implementation

MODULES=	cpan
DISTNAME=	XML-Atom-0.27
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Data-Inheritable \
		::devel/p5-DateTime \
		::www/p5-HTML-Parser \
		::www/p5-LWP-Authen-Wsse \
		::www/p5-libwww \
		::security/p5-Digest-SHA1 \
		:p5-XML-LibXML->=1.64:textproc/p5-XML-LibXML \
		::textproc/p5-XML-XPath
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_ARGS+= --default

.include <bsd.port.mk>
