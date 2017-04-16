# $OpenBSD: Makefile,v 1.17 2017/04/16 14:36:02 sthen Exp $

COMMENT=	soundcard-based software modem for Amateur Radio use

PORTROACH=	limit:^[0-9]+\.[0-9]+\.[0-9]+$$
# if updating, make sure you're using a version from the fldigi subdir
# (rather than the alpha_tests subdir.
DISTNAME=	fldigi-4.0.2

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
