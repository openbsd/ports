# $OpenBSD: Makefile,v 1.17 2016/03/20 19:56:06 naddy Exp $

COMMENT=	object-oriented interface to Ogg Vorbis information

MODULES=	cpan
DISTNAME=	Ogg-Vorbis-Header-0.03
REVISION=	7
CATEGORIES=	audio

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ogg perl vorbis vorbisfile

LIB_DEPENDS=	audio/libvorbis
RUN_DEPENDS=	devel/p5-Inline
BUILD_DEPENDS=	${RUN_DEPENDS}

pre-configure:
	@sed -i 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/Header.pm

.include <bsd.port.mk>
