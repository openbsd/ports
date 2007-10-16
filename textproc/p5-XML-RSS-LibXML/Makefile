# $OpenBSD: Makefile,v 1.2 2007/10/16 09:39:26 sthen Exp $

COMMENT= 	XML::RSS with XML::LibXML

MODULES=	cpan
DISTNAME=	XML-RSS-LibXML-0.3001
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
