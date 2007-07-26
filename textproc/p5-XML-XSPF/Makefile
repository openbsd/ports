# $OpenBSD: Makefile,v 1.1.1.1 2007/07/26 14:34:01 steven Exp $

COMMENT=	parser and generator for XSPF playlists

MODULES=	cpan
DISTNAME=	XML-XSPF-0.6
CATEGORIES=	textproc

HOMEPAGE=	http://www.xspf.org/

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Time-TimeDate \
		::www/p5-HTML-Parser \
		::textproc/p5-XML-Parser \
		::textproc/p5-XML-Writer

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
