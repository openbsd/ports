# $OpenBSD: Makefile,v 1.19 2017/05/24 14:05:42 sthen Exp $

COMMENT=	soundcard-based software modem for Amateur Radio use

# skip alpha-test versions (x.x.x.x format version numbers)
PORTROACH=	limit:^[0-9]+\.[0-9]+\.[0-9]+$$
DISTNAME=	fldigi-4.0.4

CATEGORIES=	comms hamradio

HOMEPAGE=	http://www.w1hkj.com/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xinerama c fltk
WANTLIB += fltk_images fontconfig hamlib iconv intl jpeg m png
WANTLIB += portaudio pthread samplerate sndfile ${LIBCXX} z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fldigi/}

RUN_DEPENDS=	devel/desktop-file-utils
BUILD_DEPENDS=	textproc/asciidoc
LIB_DEPENDS=	audio/libsamplerate \
		audio/libsndfile \
		audio/portaudio-svn \
		comms/hamlib \
		devel/gettext \
		graphics/png \
		x11/fltk

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-oss \
		--without-pulseaudio

MAKE_FLAGS=	ASCIIDOC_ICONS_DIR=${SYSCONFDIR}/asciidoc/images/icons

# supplied empty *.1 files are newer than .txt files
post-extract:
	touch ${WRKSRC}/doc/*txt

.include <bsd.port.mk>
