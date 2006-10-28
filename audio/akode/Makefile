# $OpenBSD: Makefile,v 1.2 2006/10/28 10:30:41 espie Exp $
COMMENT=	"Decoding Library for KDE Multimedia"

DISTNAME=	akode-2.0
PKGNAME=	${DISTNAME}
SHARED_LIBS +=	akode                2.0      # .2.0

CATEGORIES=	audio multimedia x11/kde

HOMEPAGE=	http://www.kde-apps.org/content/show.php?content=30375

MAINTAINER=	David Love <david@shef.ac.uk>

MASTER_SITES=	http://www.kde-apps.org/content/files/
EXTRACT_SUFX=	.tar.gz
DISTFILES=	30375-${DISTNAME}${EXTRACT_SUFX}

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	OggFLAC,FLAC::audio/flac \
		mad::audio/libmad \
		speex::audio/speex \
		vorbis,vorbisfile::audio/libvorbis \
		ltdl::devel/libtool,-ltdl

WANTLIB=	c stdc++ pthread m ossaudio ogg

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE=		/bin/sh ${WRKDIST}/admin/cvs.sh configure


CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include \
			--with-extra-libs=${LOCALBASE}/lib


# Force the plugins to link as modules
PLUGINS=		libakode_mpc_decoder \
			libakode_mpeg_decoder \
			lib/libakode_oss_sink \
			lib/libakode_sun_sink \
			lib/libakode_xiph_decoder

.for _n in ${PLUGINS}
    MAKE_FLAGS+=    lib${_n}_la_LDFLAGS='-module -avoid-version'
.endfor

.include <bsd.port.mk>
