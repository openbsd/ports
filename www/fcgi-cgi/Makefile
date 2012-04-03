# $OpenBSD: Makefile,v 1.5 2012/04/03 19:12:38 sthen Exp $

COMMENT=	wrapper to run CGI applications via FastCGI

DISTNAME=	fcgi-cgi-0.1.8
REVISION=	1
CATEGORIES=	www

HOMEPAGE=	http://redmine.lighttpd.net/projects/fcgi-cgi/wiki

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c ev glib-2.0 pthread

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
		LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

.include <bsd.port.mk>
