# $OpenBSD: Makefile,v 1.4 2012/03/29 13:39:00 sthen Exp $

COMMENT=	wrapper to run CGI applications via FastCGI

DISTNAME=	fcgi-cgi-0.1.8
REVISION=	0
CATEGORIES=	www

HOMEPAGE=	http://nginx.localdomain.pl/wiki/FcgiWrap

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c ev glib-2.0

MASTER_SITES=	http://cgit.lighttpd.net/fcgi-cgi.git/snapshot/ \
		http://spacehopper.org/mirrors/

SEPARATE_BUILD=	Yes

RUN_DEPENDS=	www/spawn-fcgi
LIB_DEPENDS=	devel/libev \
		devel/glib2

MODULES=	devel/gettext

CONFIGURE_STYLE= autoconf automake
AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.11

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include ${CPPFLAGS}" \
		LDFLAGS="-lm -L${LOCALBASE}/lib ${LDFLAGS}"

.include <bsd.port.mk>
