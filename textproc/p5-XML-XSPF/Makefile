# $OpenBSD: Makefile,v 1.7 2016/03/20 19:57:12 naddy Exp $

COMMENT=	parser and generator for XSPF playlists

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-XSPF-0.7.1
CATEGORIES=	textproc

HOMEPAGE=	http://www.xspf.org/

RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-Time-TimeDate \
		textproc/p5-XML-Parser \
		textproc/p5-XML-Writer \
		www/p5-HTML-Parser

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
