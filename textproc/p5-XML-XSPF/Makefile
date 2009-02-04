# $OpenBSD: Makefile,v 1.2 2009/02/04 12:58:39 jasper Exp $

COMMENT=	parser and generator for XSPF playlists

MODULES=	cpan
DISTNAME=	XML-XSPF-0.7
CATEGORIES=	textproc

HOMEPAGE=	http://www.xspf.org/

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Time-TimeDate \
		::textproc/p5-XML-Parser \
		::textproc/p5-XML-Writer \
		::www/p5-HTML-Parser

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
