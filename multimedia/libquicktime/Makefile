# $OpenBSD: Makefile,v 1.1.1.1 2004/07/09 07:30:17 sturm Exp $
# $FreeBSD: ports/multimedia/libquicktime/Makefile,v 1.19 2004/03/16 04:23:53 edwin Exp $

NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

COMMENT=		library for reading and writing quicktime files
DISTNAME=		libquicktime-0.9.2
CATEGORIES=		multimedia

HOMEPAGE=		http://libquicktime.sourceforge.net/

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libquicktime/}

LIB_DEPENDS=		vorbis.3,vorbisfile.4,vorbisenc.2::audio/libvorbis \
			jpeg.9::graphics/jpeg \
			png.4::graphics/png \
			dv.4::multimedia/libdv

USE_GMAKE=		Yes
VMEM_WARNING=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--disable-firewire

.include <bsd.port.mk>
