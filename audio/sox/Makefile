# $OpenBSD: Makefile,v 1.26 2004/07/31 14:18:14 naddy Exp $

COMMENT=	"SOund eXchange - universal sound sample translator"

DISTNAME=	sox-12.17.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio
HOMEPAGE=	http://sox.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# gsm library has bad license
PERMIT_PACKAGE_CDROM=	"no redistribution"
PERMIT_PACKAGE_FTP=	"no redistribution"
PERMIT_DISTFILES_CDROM=	"no redistribution"
PERMIT_DISTFILES_FTP=	"no redistribution"

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sox/}

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.54
CONFIGURE_ARGS=	--disable-sun-audio
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	mp3 vorbis
FLAVOR?=

.if ${FLAVOR:L:Mvorbis}
LIB_DEPENDS+=	vorbis.1,vorbisenc.1,vorbisfile.2::audio/libvorbis
.else
CONFIGURE_ARGS+= --disable-ogg-vorbis
.endif

.if ${FLAVOR:L:Mmp3}
LIB_DEPENDS+=	mad.2::audio/libmad mp3lame.0::audio/lame
.else
CONFIGURE_ARGS+= --disable-mad --disable-lame
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
