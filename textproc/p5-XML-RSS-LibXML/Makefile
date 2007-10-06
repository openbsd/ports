# $OpenBSD: Makefile,v 1.1.1.1 2007/10/06 15:27:28 simon Exp $

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

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
