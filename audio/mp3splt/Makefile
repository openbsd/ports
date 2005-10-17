# $OpenBSD: Makefile,v 1.1.1.1 2005/10/17 04:39:12 jolan Exp $

COMMENT=	"split mp3/ogg files without decoding"
DISTNAME=	mp3splt-2.1c-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	audio

HOMEPAGE=	http://sourceforge.net/projects/mp3splt/

MAINTAINER=	Armin Wolfermann <armin@wolfermann.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ogg

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3splt/}

WRKDIST=${WRKDIR}/${DISTNAME:S/-src//}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS+=	mad.2::audio/libmad \
		vorbis.3,vorbisfile.4::audio/libvorbis

.include <bsd.port.mk>
