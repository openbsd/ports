# $OpenBSD: Makefile,v 1.18 2010/10/18 16:52:47 espie Exp $

COMMENT=	rip shoutcast streams to local mp3s

DISTNAME=	streamripper-1.64.0
REVISION=	1
CATEGORIES=	audio

HOMEPAGE=	http://streamripper.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=streamripper/}

MODULES=	devel/gettext

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c cdk iberty faad glib-2.0 m mad.>=2 ogg.>=5.2 ncurses
WANTLIB += pthread vorbis.>=3.0

LIB_DEPENDS=	::audio/faad \
		::audio/libmad \
		::audio/libogg \
		::audio/libvorbis \
		::devel/glib2 \
		::devel/cdk

AUTOCONF_VERSION=2.61
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CPPLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
		USE_GROFF =	Yes

.include <bsd.port.mk>
