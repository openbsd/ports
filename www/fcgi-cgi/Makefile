# $OpenBSD: Makefile,v 1.24 2019/07/12 20:50:18 sthen Exp $

COMMENT=	wrapper to run CGI applications via FastCGI

V=		0.2.2
DISTNAME=	fcgi-cgi-$V
CATEGORIES=	www
REVISION=	2

HOMEPAGE=	http://redmine.lighttpd.net/projects/fcgi-cgi/wiki

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c ev glib-2.0 intl

MASTER_SITES=	http://cgit.lighttpd.net/fcgi-cgi.git/snapshot/ \
		https://spacehopper.org/mirrors/

SEPARATE_BUILD=	Yes

AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.11

RUN_DEPENDS=	www/spawn-fcgi
LIB_DEPENDS=	devel/libev \
		devel/glib2

CONFIGURE_STYLE= autoreconf

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

AUTORECONF=	./autogen.sh

.include <bsd.port.mk>
