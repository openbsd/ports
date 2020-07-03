# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:12 sthen Exp $

COMMENT=	automate launching of fake mpd for testing purposes

DISTNAME=	Test-Corpus-Audio-MPD-1.120990
CATEGORIES=	devel audio
REVISION=	0

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
