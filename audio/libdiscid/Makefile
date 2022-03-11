COMMENT=	create MusicBrainz DiscIDs from audio CDs

DISTNAME=	libdiscid-0.6.2
REVISION=	0

CATEGORIES=	audio

SHARED_LIBS +=	discid 0.0      # 0.0

HOMEPAGE=	https://musicbrainz.org/doc/libdiscid/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += util

MASTER_SITES=	http://ftp.musicbrainz.org/pub/musicbrainz/libdiscid/

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_header_musicbrainz5_mb5_c_h=no

.include <bsd.port.mk>
