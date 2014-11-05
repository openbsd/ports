# $OpenBSD: Makefile,v 1.41 2014/11/05 11:43:59 sthen Exp $

COMMENT =	SDL port of the legendary 2D platform shooter

DISTNAME =	abuse-free-0.8
PKGNAME =	abuse-0.8
EPOCH =		0
ABUSE_SFX =	abuse-free-sounds-20120309
CATEGORIES =	games x11
REVISION =	0

HOMEPAGE =	http://abuse.zoy.org/

MAINTAINER =	Antti Harri <iku@openbsd.fi>

# Abuse: GPLv2 and public domain
# Abuse-free-sounds: various free licenses
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC GL SDL SDL_mixer X11 Xdamage Xext Xfixes
WANTLIB += Xxf86vm c drm iconv m mikmod ogg pthread smpeg
WANTLIB += sndio stdc++ usbhid vorbis vorbisfile xcb
WANTLIB += X11-xcb Xau Xdmcp glapi pthread-stubs xcb-dri2 xcb-glx

MASTER_SITES =	${HOMEPAGE}raw-attachment/wiki/download/
MASTER_SITES0 =	http://openbsd.fi/dist/

MODULES =	converters/libiconv
# Needs AC_PROG_LIBTOOL
BUILD_DEPENDS =	devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS = 	audio/timidity
LIB_DEPENDS =	devel/sdl-mixer \
		devel/smpeg \
		audio/flac \
		audio/libogg \
		audio/libmikmod \
		audio/libvorbis

DISTFILES = 	${DISTNAME}.tar.gz \
		${ABUSE_SFX}.tar.gz:0

SEPARATE_BUILD =Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-release \
			--disable-nonfree \
			--with-assetdir=${PREFIX}/share/abuse \
			--datadir=${PREFIX}/share/abuse
AUTOMAKE_VERSION =	1.11
AUTOCONF_VERSION =	2.68

NO_TEST =	Yes

post-patch:
	cd "${WRKSRC}" && \
		find "${WRKDIR}/${ABUSE_SFX}/patches/" -name 'patch-*' \
		-exec patch -z .afs-orig -i {} \;

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -fi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/abuse/sfx
	cd ${WRKDIR}/${ABUSE_SFX}/sfx && find . -type f -exec \
		${INSTALL_DATA} {} ${PREFIX}/share/abuse/sfx/ \;

.include <bsd.port.mk>
