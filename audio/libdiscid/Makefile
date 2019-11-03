# $OpenBSD: Makefile,v 1.6 2019/11/03 12:11:07 jasper Exp $

COMMENT=	create MusicBrainz DiscIDs from audio CDs

DISTNAME=	libdiscid-0.6.2
CATEGORIES=	audio

SHARED_LIBS +=	discid 0.0      # 0.0

HOMEPAGE=	https://musicbrainz.org/doc/libdiscid/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://ftp.musicbrainz.org/pub/musicbrainz/libdiscid/

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_header_musicbrainz5_mb5_c_h=no

.include <bsd.port.mk>
