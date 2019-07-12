# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:09 sthen Exp $

COMMENT=	automate launching of fake mpd for testing purposes

DISTNAME=	Test-Corpus-Audio-MPD-1.120990
CATEGORIES=	devel audio

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-File-ShareDir>=1.0 \
			devel/p5-File-ShareDir-PathClass \
			devel/p5-Path-Class \
			devel/p5-Readonly

MAKE_ENV +=		TEST_POD=Yes RELEASE_TESTING=Yes


.include <bsd.port.mk>
