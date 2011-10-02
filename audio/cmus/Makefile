# $OpenBSD: Makefile,v 1.5 2011/10/02 14:11:55 rpointel Exp $

COMMENT-main=		ncurses-based music player
COMMENT-flac=		FLAC input plugin for cmus
COMMENT-wavpack=	Wavpack input plugin for cmus

V=			2.4.2
DISTNAME=		cmus-v$(V)
PKGNAME-main=		cmus-$(V)
PKGNAME-flac=		cmus-flac-$(V)
PKGNAME-wavpack=	cmus-wavpack-$(V)

REVISION-main=		2
REVISION-flac=		1
REVISION-wavpack=	1

CATEGORIES=		audio

HOMEPAGE=		http://cmus.sourceforge.net/
MAINTAINER=		Donovan Watteau <tsoomi@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cmus/}

SHARED_ONLY=		Yes
MULTI_PACKAGES=		-main -flac -wavpack

MODULES=		converters/libiconv

WANTLIB-main=		c m pthread sndio ncursesw mad>=2 ${MODLIBICONV_WANTLIB}

LIB_DEPENDS=		audio/libmad

LIB_DEPENDS-flac=	audio/flac audio/libogg
RUN_DEPENDS-flac=	audio/cmus
WANTLIB-flac=		FLAC>=5 ogg m
LIB_DEPENDS-wavpack=	audio/wavpack ${MODLIBICONV_LIB_DEPENDS}
RUN_DEPENDS-wavpack=	audio/cmus
WANTLIB-wavpack=	wavpack m ${MODLIBICONV_WANTLIB}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		HOSTCC="${CC}" HOSTLD="${CC}" HOST_CFLAGS="${CFLAGS}"
CONFIGURE_ARGS=		prefix=${PREFIX} \
			exampledir=${PREFIX}/share/examples/cmus \
			mandir=${PREFIX}/man \
			CONFIG_AAC=n \
			CONFIG_FFMPEG=n \
			CONFIG_MODPLUG=n \
			CONFIG_MP4=n \
			CONFIG_MPC=n \
			CONFIG_OSS=n \
			CONFIG_SUN=n \
			CONFIG_AO=n \
			CONFIG_ARTS=n \
			CONFIG_SNDIO=y

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=	CONFIG_TREMOR=y
LIB_DEPENDS+=		audio/tremor
WANTLIB-main+=		vorbisidec>=1
.else
LIB_DEPENDS+=		audio/libvorbis
WANTLIB-main+=		ogg vorbis>=0 vorbisfile>=1
.endif

NO_REGRESS=		Yes

post-patch:
	@cp ${FILESDIR}/sndio.c ${WRKSRC}
	perl -pi -e s,/usr,${LOCALBASE}, ${WRKSRC}/Doc/cmus.txt
	perl -pi -e s,doc/cmus/examples,examples/cmus, ${WRKSRC}/Doc/cmus.txt

.include <bsd.port.mk>
