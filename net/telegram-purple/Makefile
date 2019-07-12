# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:50 sthen Exp $

BROKEN-powerpc =	assertion "get_int () == TLS_SCHEMA_V2" failed: file "generate.c", line 2831, function "parse_tlo_file"

V =			1.3.1
REVISION =		2
COMMENT =		Telegram support for Pidgin
DISTNAME =		telegram-purple_$V.orig
PKGNAME =		telegram-purple-$V
CATEGORIES =		net

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += gcrypt glib-2.0 intl purple webp z

MASTER_SITES =	https://github.com/majn/telegram-purple/releases/download/v$V/

BUILD_DEPENDS =		devel/gettext,-tools
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

post-install:
	mv ${DESTDIR}/etc/telegram-purple ${PREFIX}/share/purple

.include <bsd.port.mk>
