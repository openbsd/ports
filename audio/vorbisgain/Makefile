# $OpenBSD: Makefile,v 1.1.1.1 2003/03/29 00:35:43 naddy Exp $

COMMENT=		"add tags to Ogg Vorbis files to adjust the volume"

DISTNAME=		vorbisgain-0.32
CATEGORIES=		audio
HOMEPAGE=		http://sjeng.sourceforge.net/vorbisgain.html

MAINTAINER=		Han Boetes <han@linux-mandrake.com>

# (L)GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://sjeng.org/ftp/vorbis/
EXTRACT_SUFX=		.zip

LIB_DEPENDS=		vorbis.2,vorbisfile.3::audio/libvorbis

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-recursive
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
