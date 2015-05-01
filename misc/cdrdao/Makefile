# $OpenBSD: Makefile,v 1.38 2015/05/01 06:15:46 ajacoutot Exp $

COMMENT=	write audio/data CD-Rs in disk-at-once mode

DISTNAME= 	cdrdao-1.2.0
REVISION=	2
CATEGORIES=	audio misc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cdrdao/}

HOMEPAGE=	http://cdrdao.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m stdc++

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/paranoia ${WRKSRC}/scsilib/conf
CONFIGURE_ARGS+=	--with-posix-threads=no \
			--with-xdao=no
MAKE_ENV=		CCOM="${CC}"

FLAVORS=	audio
FLAVOR?=

.if ${FLAVOR:Maudio}
CONFIGURE_ARGS+=	--with-lame-lib=${LOCALBASE}/lib \
			--with-lame-include=${LOCALBASE}/include
BUILD_DEPENDS+=		audio/libmad
LIB_DEPENDS+=		audio/libao \
			audio/lame \
			audio/libmad \
			audio/libvorbis
WANTLIB+=		ao mp3lame mad vorbis ogg vorbisfile
.else
CONFIGURE_ARGS+=	--with-ogg-support=no \
			--with-mp3-support=no \
			--without-lame
.endif

.if ${MACHINE} != "i386" || ${CC} != "cc"
pre-configure:
	@ln -sf ${WRKSRC}/scsilib/RULES/i386-openbsd-cc.rul \
		${WRKSRC}/scsilib/RULES/${MACHINE}-openbsd-${CC}.rul
.endif

post-install:
	@strip ${PREFIX}/bin/cdrdao ${PREFIX}/bin/toc2cue
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdrdao
	cd ${WRKDIST} && ${INSTALL_DATA} README README.PlexDAE \
	    ${PREFIX}/share/doc/cdrdao

.include <bsd.port.mk>
