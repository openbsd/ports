# $OpenBSD: Makefile,v 1.2 2022/02/12 18:06:48 landry Exp $

COMMENT =	HTTP Framework for REST Applications in C

GH_ACCOUNT =	babelouest
GH_PROJECT =	ulfius
GH_TAGNAME =	v2.7.7

SHARED_LIBS =	ulfius	0.0

CATEGORIES =	www

HOMEPAGE =	https://babelouest.github.io/ulfius/

# LGPL 2.1
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curl gnutls jansson microhttpd orcania pthread yder z

MODULES =		devel/cmake

LIB_DEPENDS +=		devel/jansson \
			devel/orcania \
			devel/yder \
			net/curl \
			security/gnutls \
			www/libmicrohttpd

NO_TEST =		Yes

.include <bsd.port.mk>
