# $OpenBSD: Makefile,v 1.22 2002/12/29 19:29:57 fgsch Exp $

COMMENT=	"SOund eXchange - universal sound sample translator"

DISTNAME=	sox-12.17.3
CATEGORIES=	audio
HOMEPAGE=	http://sox.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sox/}

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
AUTOCONF_NEW=	Yes
CONFIGURE_ARGS=	--without-sun_audio

FLAVORS=	vorbis
FLAVOR?=

.if ${FLAVOR:L:Mvorbis}
LIB_DEPENDS+=	vorbis.1,vorbisenc.1,vorbisfile.2::audio/libvorbis
CONFIGURE_ARGS+= --with-ogg-vorbisinc="${LOCALBASE}/include" \
		 --with-ogg-vorbislib="${LOCALBASE}/lib"
.else
CONFIGURE_ARGS+= --with-ogg-vorbisinc=no
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
