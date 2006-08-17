# $OpenBSD: Makefile,v 1.12 2006/08/17 17:02:13 naddy Exp $

COMMENT=	"rip shoutcast streams to local mp3s"

DISTNAME=	streamripper-1.61.11
PKGNAME=	${DISTNAME}p2
CATEGORIES=	audio

HOMEPAGE=	http://streamripper.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=streamripper/}

MODULES=	converters/libiconv

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m pthread

LIB_DEPENDS=	mad.>=2::audio/libmad \
		ogg.>=5.2::audio/libogg \
		vorbis.>=3.0::audio/libvorbis

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
