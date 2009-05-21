# $OpenBSD: Makefile,v 1.33 2009/05/21 14:11:51 pirofti Exp $

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		Wine enables you to run windows binaries.

DISTNAME =		wine-1.1.21

SHARED_LIBS =		wine 0.0

CATEGORIES =		x11 emulators

HOMEPAGE =		http://winehq.org/

MAINTAINER =		Ariane van der Steldt <ariane@stack.nl>

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m z pthread ssl GL GLU crypto ossaudio ncurses \
			ICE SM X11 Xext Xpm Xxf86dga Xxf86vm gphoto2 \
			gphoto2_port jpeg lcms png sane xslt iconv drm

MASTER_SITES =		http://ibiblio.org/pub/linux/system/emulators/wine/ \
			http://prdownloads.sourceforge.net/wine/
EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		:bison-*:devel/bison
LIB_DEPENDS =		xslt.>=3::textproc/libxslt \
			jpeg.>=62::graphics/jpeg \
			png.>=4::graphics/png \
			gphoto2.>=2,gphoto2_port.>=5::graphics/libgphoto2 \
			sane.>=1::graphics/sane-backends \
			lcms.>=1::graphics/lcms \
			iconv.>=1::converters/libiconv
RUN_DEPENDS =		::devel/desktop-file-utils

USE_X11 =		Yes
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu autoconf

CPPFLAGS =		-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng \
			-I${X11BASE}/include

LDFLAGS =		-L${LOCALBASE}/lib \
			-L${X11BASE}/lib \
			-lz -lm -lcrypto -liconv -pthread

X_EXTRA_LIBS =		-L${X11BASE}/lib \
			-lXau -lXdmcp -ldrm -lGL -lGLU -lXxf86vm -lXdamage

CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}" \
			X_EXTRA_LIBS="${X_EXTRA_LIBS}"

CONFIGURE_ARGS +=	--without-hal --without-ldap --without-capi

AUTOCONF_VERSION =	2.62

FLAVORS =		cups esd
FLAVOR ?=
.if ${FLAVOR:L:Mcups}
CONFIGURE_ARGS +=	--with-cups
.else
CONFIGURE_ARGS +=	--without-cups
.endif
.if ${FLAVOR:L:Mesd}
CONFIGURE_ARGS +=	--with-esd
LIB_DEPENDS =		esd.>=2::sound/esound
.else
CONFIGURE_ARGS +=	--without-esd
.endif

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS	+=	--enable-win64
.endif

post-configure:
	cd ${WRKSRC} && ${MAKE} depend

.include <bsd.port.mk>
