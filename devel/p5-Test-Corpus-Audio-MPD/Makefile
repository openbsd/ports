# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:36 naddy Exp $

COMMENT=	automate launching of fake mpd for testing purposes

DISTNAME=	Test-Corpus-Audio-MPD-1.110710
CATEGORIES=	devel audio

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-ShareDir \
			devel/p5-Path-Class \
			devel/p5-Readonly

.include <bsd.port.mk>
