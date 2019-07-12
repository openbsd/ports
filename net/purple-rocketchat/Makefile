# $OpenBSD: Makefile,v 1.2 2019/07/12 20:48:44 sthen Exp $

COMMENT =	Rocket.chat support for Pidgin

HG_COMMIT =	826990b48f41
V =		0.20190416
DISTNAME =	purple-rocketchat-${HG_COMMIT}{${HG_COMMIT}}
PKGNAME =	purple-rocketchat-$V
CATEGORIES =	net

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://bitbucket.org/EionRobb/purple-rocketchat/get/
HOMEPAGE =	https://bitbucket.org/EionRobb/purple-rocketchat

LIB_DEPENDS =	net/pidgin,-libpurple \
		devel/json-glib \
		textproc/discount>=2.2.4p0

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl json-glib-1.0
WANTLIB += markdown pcre pthread purple z

USE_GMAKE =	Yes
WRKDIST =	${WRKDIR}/EionRobb-purple-rocketchat-${HG_COMMIT}

.include <bsd.port.mk>
