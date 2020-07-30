# $OpenBSD: Makefile,v 1.1.1.1 2020/07/30 01:00:12 millert Exp $

COMMENT-main=	lyrics and chords formatting program
COMMENT-wx=	graphical front-end to chordpro

MODULES=	cpan
PKG_ARCH=	*
V=		0.974.1
DISTNAME=	App-Music-ChordPro-$V
CATEGORIES=	textproc

PKGNAME-main=	chordpro-$V
PKGNAME-wx=	wxchordpro-$V

HOMEPAGE=	https://www.chordpro.org/

MAINTAINER=	Todd C. Miller <millert@openbsd.org>

PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-main -wx

RUN_DEPENDS=	devel/p5-App-Packager>=1.430 \
		devel/p5-File-LoadLines>=0.02 \
		devel/p5-IO-String>=1.08 \
		devel/p5-String-Interpolate-Named>=0.05 \
		graphics/p5-Image-Info>=1.41 \
		textproc/p5-Font-TTF>=1.04 \
		textproc/p5-PDF-API2>=2.020

RUN_DEPENDS-main=	${RUN_DEPENDS}
RUN_DEPENDS-mx=		${RUN_DEPENDS} x11/p5-Wx

TEST_DEPENDS+=	devel/p5-String-Interpolate-Named>=0.05

.include <bsd.port.mk>
