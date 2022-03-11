# endianness issues in tgl/generate.c
NOT_FOR_ARCHS =		${BE_ARCHS}

V =			1.4.6
COMMENT =		Telegram support for Pidgin
DISTNAME =		telegram-purple_$V.orig
PKGNAME =		telegram-purple-$V
CATEGORIES =		net

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += gcrypt glib-2.0 intl png purple webp z

MASTER_SITES =	https://github.com/majn/telegram-purple/releases/download/v$V/

BUILD_DEPENDS =		devel/gettext,-tools \
			sysutils/coreutils
LIB_DEPENDS =		devel/gettext,-runtime \
			graphics/libwebp \
			net/pidgin,-libpurple \
			security/libgcrypt

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS =		-L${LOCALBASE}/lib

WRKDIST =		${WRKDIR}/telegram-purple

pre-configure:
	sed -i 's|sha256sum|gsha256sum|g' ${WRKDIST}/Makefile.in \
		${WRKDIST}/mkwindows.sh ${WRKDIST}/tgl/Makefile.in

post-install:
	mv ${DESTDIR}/etc/telegram-purple ${PREFIX}/share/purple

.include <bsd.port.mk>
