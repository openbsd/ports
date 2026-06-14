COMMENT =	access software for a blind person using a braille terminal

DISTNAME =	brltty-6.9.1

CATEGORIES =	misc

HOMEPAGE =	https://brltty.app/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xaw Xfixes Xt atspi c curses dbus-1 espeak-ng execinfo
WANTLIB += expat flite flite_cmu_us_kal flite_cmulex flite_usenglish
WANTLIB += glib-2.0 icudata icuuc intl louis m pcre2-32 pthread
WANTLIB += sndio speechd

SITES =			https://brltty.app/archive/

BUILD_DEPENDS +=	devel/gettext,-tools \
			sysutils/coreutils

LIB_DEPENDS +=		audio/espeak \
			audio/flite \
			audio/speech-dispatcher \
			devel/gettext,-runtime \
			devel/glib2 \
			devel/liblouis \
			devel/pcre2 \
			textproc/icu4c,-main \
			x11/dbus,-main \
			x11/gnome/at-spi2-core

RUN_DEPENDS +=		screen-*-shm:misc/screen-shm

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LIBS=-lsndio
CONFIGURE_ARGS +=	\
	--with-install-root="${WRKINST}" \
	--with-manpage-directory="${PREFIX}/man" \
	--sysconfdir="${PREFIX}/share/examples/brltty" \
	--with-tables-directory="${PREFIX}/share/brltty" \
	--disable-api \
	--with-api-socket-path="${LOCALSTATEDIR}/BrlAPI" \
	--enable-liblouis \
	--disable-gpm \
	--disable-polkit \
	--disable-emacs-bindings \
	--disable-java-bindings \
	--disable-lisp-bindings \
	--disable-lua-bindings \
	--disable-ocaml-bindings \
	--disable-python-bindings \
	--disable-tcl-bindings \
	--with-espeak_ng="${LOCALBASE}" \
	--without-espeak \
	--without-mikropuhe \
	--without-swift \
	--without-theta

DEBUG_CONFIGURE_ARGS =	--disable-stripping
DEBUG_PACKAGES =	${BUILD_PACKAGES}

AUTOCONF_VERSION =	2.72
AUTOMAKE_VERSION =	1.9

NO_TEST =		Yes

pre-configure:
	ln -fs ${LOCALBASE}/bin/gexpr ${WRKDIR}/bin/expr

post-extract:
	mv ${WRKSRC}/Programs/pcm_audio.c ${WRKSRC}/Programs/pcm_audio.c-old
	cp ${FILESDIR}/pcm_audio.c ${WRKSRC}/Programs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/brltty
	${INSTALL_DATA} ${WRKBUILD}/Documents/brltty.conf \
		${PREFIX}/share/doc/brltty

.include <bsd.port.mk>
