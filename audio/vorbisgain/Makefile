# $OpenBSD: Makefile,v 1.10 2007/07/21 08:08:51 ajacoutot Exp $

COMMENT=		add tags to Ogg Vorbis files to adjust the volume

DISTNAME=		vorbisgain-0.36
PKGNAME=		${DISTNAME}p1
CATEGORIES=		audio
HOMEPAGE=		http://sjeng.org/vorbisgain.html

MAINTAINER=		Moritz Grimm <mdgrimm@gmx.net>

# (L)GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ogg

MASTER_SITES=		http://sjeng.org/ftp/vorbis/
EXTRACT_SUFX=		.zip

LIB_DEPENDS=		vorbis.>=4,vorbisfile.>=4::audio/libvorbis

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-recursive
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
