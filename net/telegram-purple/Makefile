# $OpenBSD: Makefile,v 1.2 2017/07/28 07:11:55 tb Exp $

V =			1.3.1
REVISION =		0
COMMENT =		Telegram support for Pidgin
DISTNAME =		telegram-purple_$V.orig
PKGNAME =		telegram-purple-$V
CATEGORIES =		net

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += gcrypt glib-2.0 intl purple webp z

MASTER_SITES =	https://github.com/majn/telegram-purple/releases/download/v$V/

BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/gettext \
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
