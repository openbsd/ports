# $OpenBSD: Makefile,v 1.20 2018/11/07 07:54:29 espie Exp $

COMMENT-main=	wrapper to run CGI applications via FastCGI
COMMENT-static=	static-linked fcgi-cgi wrapper for chroot use

V=		0.2.2
DISTNAME=	fcgi-cgi-$V
PKGNAME-main=	fcgi-cgi-$V
PKGNAME-static=	fcgi-cgi-static-$V
CATEGORIES=	www
REVISION=	1

HOMEPAGE=	http://redmine.lighttpd.net/projects/fcgi-cgi/wiki

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ev glib-2.0 intl m

MASTER_SITES=	http://cgit.lighttpd.net/fcgi-cgi.git/snapshot/ \
		https://spacehopper.org/mirrors/

SEPARATE_BUILD=	Yes
MULTI_PACKAGES=	-main -static

AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.11

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS=	www/spawn-fcgi
RUN_DEPENDS-static= www/fcgi-cgi,-main
LIB_DEPENDS=	devel/libev \
		devel/glib2

CONFIGURE_STYLE= gnu
PREFIX-static=	${VARBASE}/www/${TRUEPREFIX}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

do-gen:
	cd ${WRKSRC}; ${AUTOCONF_ENV} ./autogen.sh

post-install:
	${INSTALL_PROGRAM_DIR} ${WRKINST}${PREFIX-static}/bin
	mv ${PREFIX}/bin/fcgi-cgi-static \
	    ${WRKINST}${PREFIX-static}/bin/fcgi-cgi

.include <bsd.port.mk>
