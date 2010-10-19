# $OpenBSD: Makefile,v 1.3 2010/10/19 07:54:25 espie Exp $

COMMENT=	parser and generator for XSPF playlists

MODULES=	cpan
DISTNAME=	XML-XSPF-0.7
CATEGORIES=	textproc
USE_GROFF =	Yes

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
