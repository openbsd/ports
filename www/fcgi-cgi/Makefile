# $OpenBSD: Makefile,v 1.22 2019/01/01 16:30:55 ajacoutot Exp $

COMMENT=	wrapper to run CGI applications via FastCGI

V=		0.2.2
DISTNAME=	fcgi-cgi-$V
CATEGORIES=	www
REVISION=	2

HOMEPAGE=	http://redmine.lighttpd.net/projects/fcgi-cgi/wiki

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ev glib-2.0 intl

MASTER_SITES=	http://cgit.lighttpd.net/fcgi-cgi.git/snapshot/ \
		https://spacehopper.org/mirrors/

SEPARATE_BUILD=	Yes

AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.11

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS=	www/spawn-fcgi
LIB_DEPENDS=	devel/libev \
		devel/glib2

CONFIGURE_STYLE= gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

do-gen:
	cd ${WRKSRC} && env -i ${AUTOCONF_ENV} ./autogen.sh

.include <bsd.port.mk>
