# $OpenBSD: Makefile,v 1.22 2011/12/01 18:57:48 shadchin Exp $

COMMENT=	rip shoutcast streams to local mp3s

DISTNAME=	streamripper-1.64.6
CATEGORIES=	audio

HOMEPAGE=	http://streamripper.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=streamripper/}

MODULES=	devel/gettext

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c faad glib-2.0 iberty m mad>=2 ogg>=5.2 pthread vorbis>=3.0

LIB_DEPENDS=	audio/faad \
		audio/libmad \
		audio/libogg \
		audio/libvorbis \
		devel/glib2

AUTOCONF_VERSION=2.63
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CPPLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

.include <bsd.port.mk>
