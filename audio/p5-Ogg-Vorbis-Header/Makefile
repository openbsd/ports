# $OpenBSD: Makefile,v 1.14 2014/06/14 23:23:11 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	object-oriented interface to Ogg Vorbis information

MODULES=	cpan
DISTNAME=	Ogg-Vorbis-Header-0.03
REVISION=	6
CATEGORIES=	audio

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ogg vorbis vorbisfile

LIB_DEPENDS=	audio/libvorbis
RUN_DEPENDS=	devel/p5-Inline
BUILD_DEPENDS=	${RUN_DEPENDS}

pre-configure:
	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/Header.pm

.include <bsd.port.mk>
