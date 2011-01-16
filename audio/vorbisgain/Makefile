# $OpenBSD: Makefile,v 1.15 2011/01/16 19:53:17 naddy Exp $

COMMENT=		add tags to Ogg Vorbis files to adjust the volume

DISTNAME=		vorbisgain-0.36
REVISION=		2
CATEGORIES=		audio
HOMEPAGE=		http://sjeng.org/vorbisgain.html

# (L)GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m ogg vorbis>=4 vorbisfile>=4

MASTER_SITES=		http://sjeng.org/ftp/vorbis/
EXTRACT_SUFX=		.zip

LIB_DEPENDS=		audio/libvorbis

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-recursive
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =		Yes

.include <bsd.port.mk>
