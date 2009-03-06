# $OpenBSD: Makefile,v 1.16 2009/03/06 21:19:50 jasper Exp $

COMMENT=	rip shoutcast streams to local mp3s

DISTNAME=	streamripper-1.64.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio

HOMEPAGE=	http://streamripper.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=streamripper/}

MODULES=	devel/gettext

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m ncurses pthread

LIB_DEPENDS=	faad::audio/faad \
		mad.>=2::audio/libmad \
		ogg.>=5.2::audio/libogg \
		vorbis.>=3.0::audio/libvorbis \
		glib-2.0::devel/glib2 \
		cdk::devel/cdk

AUTOCONF_VERSION=2.61
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CPPLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
