# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:31 sthen Exp $

COMMENT=	object-oriented interface to Ogg Vorbis information

MODULES=	cpan
DISTNAME =	Ogg-Vorbis-Header-0.10
CATEGORIES=	audio
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

WANTLIB=	c ogg perl vorbis vorbisfile

LIB_DEPENDS=	audio/libvorbis
RUN_DEPENDS=	devel/p5-Inline
BUILD_DEPENDS=	devel/p5-Inline

pre-configure:
	sed -i 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/lib/Ogg/Vorbis/Header.pm

.include <bsd.port.mk>
