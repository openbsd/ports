# $OpenBSD: Makefile,v 1.8 2010/10/18 22:43:10 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	object-oriented interface to Ogg Vorbis information

MODULES=	cpan
DISTNAME=	Ogg-Vorbis-Header-0.03
REVISION=	2
CATEGORIES=	audio

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ogg vorbis vorbisfile
USE_GROFF =	Yes

LIB_DEPENDS=	::audio/libvorbis
RUN_DEPENDS=	::devel/p5-Inline
BUILD_DEPENDS=	${RUN_DEPENDS}

pre-configure:
	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/Header.pm

.include <bsd.port.mk>
