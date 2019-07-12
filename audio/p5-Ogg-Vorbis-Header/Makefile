# $OpenBSD: Makefile,v 1.19 2019/07/12 20:43:38 sthen Exp $

COMMENT=	object-oriented interface to Ogg Vorbis information

MODULES=	cpan
DISTNAME=	Ogg-Vorbis-Header-0.05
CATEGORIES=	audio

# perl
PERMIT_PACKAGE=	Yes

WANTLIB=	c ogg perl vorbis vorbisfile

LIB_DEPENDS=	audio/libvorbis
RUN_DEPENDS=	devel/p5-Inline
BUILD_DEPENDS=	devel/p5-Inline

pre-configure:
	sed -i 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/Header.pm

.include <bsd.port.mk>
