COMMENT=	object-oriented interface to Ogg Vorbis information

MODULES=	cpan
DISTNAME =	Ogg-Vorbis-Header-0.11
CATEGORIES=	audio

# perl
PERMIT_PACKAGE=	Yes

WANTLIB=	c ogg perl vorbis vorbisfile

LIB_DEPENDS=	audio/libvorbis
RUN_DEPENDS=	devel/p5-Inline
BUILD_DEPENDS=	devel/p5-Inline

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/Ogg/Vorbis/Header.pm

.include <bsd.port.mk>
