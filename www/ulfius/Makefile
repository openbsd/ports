COMMENT =	HTTP Framework for REST Applications in C

GH_ACCOUNT =	babelouest
GH_PROJECT =	ulfius
GH_TAGNAME =	v2.7.15

SHARED_LIBS =	ulfius	0.1

CATEGORIES =	www

HOMEPAGE =	https://babelouest.github.io/ulfius/

# LGPL 2.1
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curl gnutls jansson microhttpd orcania pthread yder z

MODULES =		devel/cmake

LIB_DEPENDS +=		devel/jansson \
			devel/orcania \
			devel/yder>=1.4.20 \
			net/curl \
			security/gnutls \
			www/libmicrohttpd

NO_TEST =		Yes

.include <bsd.port.mk>
