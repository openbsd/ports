# $OpenBSD: Makefile,v 1.3 2008/05/17 17:49:05 simon Exp $

COMMENT= 	XML::RSS with XML::LibXML

MODULES=	cpan
DISTNAME=	XML-RSS-LibXML-0.3002
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-DateTime-Format-Mail \
		::devel/p5-DateTime-Format-W3CDTF \
		::devel/p5-Universal-require \
		::textproc/p5-XML-LibXML

BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
