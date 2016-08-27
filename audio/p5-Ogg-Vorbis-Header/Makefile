# $OpenBSD: Makefile,v 1.18 2016/08/27 20:37:17 ajacoutot Exp $

COMMENT=	object-oriented interface to Ogg Vorbis information

MODULES=	cpan
DISTNAME=	Ogg-Vorbis-Header-0.05
CATEGORIES=	audio

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ogg perl vorbis vorbisfile

LIB_DEPENDS=	audio/libvorbis
RUN_DEPENDS=	devel/p5-Inline
BUILD_DEPENDS=	devel/p5-Inline

pre-configure:
	sed -i 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/Header.pm

.include <bsd.port.mk>
