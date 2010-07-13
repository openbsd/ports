# $OpenBSD: Makefile,v 1.5 2010/07/13 19:46:10 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	object-oriented interface to Ogg Vorbis information

MODULES=	cpan
DISTNAME=	Ogg-Vorbis-Header-0.03
REVISION=	1
CATEGORIES=	audio

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ogg

LIB_DEPENDS=	vorbis.>=5,vorbisfile.>=4::audio/libvorbis
RUN_DEPENDS=	::devel/p5-Inline
BUILD_DEPENDS=	${RUN_DEPENDS}

pre-configure:
	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/Header.pm

.include <bsd.port.mk>
