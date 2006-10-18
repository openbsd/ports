# $OpenBSD: Makefile,v 1.35 2006/10/18 15:41:06 naddy Exp $

COMMENT=	"SOund eXchange - universal sound sample translator"

DISTNAME=	sox-12.18.2
CATEGORIES=	audio
HOMEPAGE=	http://sox.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# gsm library has bad license
PERMIT_PACKAGE_CDROM=	"no redistribution"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no redistribution"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sox/}

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	--disable-oss-dsp
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV=	PLAY_SUPPORT=1

FLAVORS=	mp3 vorbis
FLAVOR?=

.if ${FLAVOR:L:Mvorbis}
LIB_DEPENDS+=	vorbis.>=3,vorbisenc.>=2,vorbisfile.>=4::audio/libvorbis
WANTLIB+=	ogg
.else
CONFIGURE_ARGS+= --disable-ogg-vorbis
.endif

.if ${FLAVOR:L:Mmp3}
LIB_DEPENDS+=	mad.>=2::audio/libmad mp3lame::audio/lame
.else
CONFIGURE_ARGS+= --disable-mad --disable-lame
.endif

do-regress:
	@cd ${WRKSRC}/src && ./tests.sh && ./testall.sh

.include <bsd.port.mk>
