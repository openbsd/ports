# $OpenBSD: Makefile,v 1.8 2019/07/12 20:50:10 sthen Exp $

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
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
