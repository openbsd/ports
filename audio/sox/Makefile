# $OpenBSD: Makefile,v 1.18 2001/10/27 14:02:22 naddy Exp $

COMMENT=	"SOund eXchange - universal sound sample translator"

DISTNAME=	sox-12.17.2
CATEGORIES=	audio
NEED_VERSION=	1.364
HOMEPAGE=	http://sox.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	sox

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--enable-fast-alaw --enable-fast-ulaw \
		--without-sun_audio

FLAVORS=	gsm vorbis
FLAVOR?=

.if ${FLAVOR:L:Mgsm}
LIB_DEPENDS+=	gsm.1::audio/gsm
CONFIGURE_ARGS+= --with-gsminc="${LOCALBASE}/include" \
		 --with-gsmlib="${LOCALBASE}/lib"
.else
CONFIGURE_ARGS+= --with-gsminc=no
.endif

.if ${FLAVOR:L:Mvorbis}
LIB_DEPENDS+=	vorbis.0,vorbisenc.0,vorbisfile.1::audio/libvorbis
CONFIGURE_ARGS+= --with-ogg-vorbisinc="${LOCALBASE}/include" \
		 --with-ogg-vorbislib="${LOCALBASE}/lib"
.else
CONFIGURE_ARGS+= --with-ogg-vorbisinc=no
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
