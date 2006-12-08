# $OpenBSD: Makefile,v 1.1.1.1 2006/12/08 23:08:29 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"object-oriented interface to Ogg Vorbis information"

MODULES=	cpan
DISTNAME=	Ogg-Vorbis-Header-0.03
CATEGORIES=	audio

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ogg

LIB_DEPENDS=	vorbis.>=5,vorbisfile.>=4::audio/libvorbis
BUILD_DEPENDS=	::devel/p5-Inline

pre-configure:
	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/Header.pm

.include <bsd.port.mk>
