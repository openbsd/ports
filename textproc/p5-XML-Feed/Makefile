# $OpenBSD: Makefile,v 1.1.1.1 2007/10/06 15:27:16 simon Exp $

COMMENT= 	creates and XML stream connection and parses return data

MODULES=	cpan
DISTNAME=	XML-Feed-0.12
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-ErrorHandler \
		::devel/p5-DateTime \
		::devel/p5-DateTime-Format-Mail \
		::devel/p5-DateTime-Format-W3CDTF \
		::textproc/p5-XML-Atom \
		::textproc/p5-XML-RSS \
		::www/p5-Feed-Find \
		::www/p5-HTML-Parser \
		::www/p5-URI-Fetch \
		::www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
