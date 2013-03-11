# $OpenBSD: Makefile,v 1.10 2013/03/11 11:44:41 espie Exp $

COMMENT-main=	wrapper to run CGI applications via FastCGI
COMMENT-static=	static-linked fcgi-cgi wrapper for chroot use

V=		0.1.8
DISTNAME=	fcgi-cgi-$V
PKGNAME-main=	fcgi-cgi-$V
PKGNAME-static=	fcgi-cgi-static-$V
REVISION=	4
CATEGORIES=	www

HOMEPAGE=	http://redmine.lighttpd.net/projects/fcgi-cgi/wiki

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ev glib-2.0 m pthread

MASTER_SITES=	http://cgit.lighttpd.net/fcgi-cgi.git/snapshot/ \
		http://spacehopper.org/mirrors/

SEPARATE_BUILD=	Yes
MULTI_PACKAGES=	-main -static

RUN_DEPENDS=	www/spawn-fcgi
RUN_DEPENDS-static= www/fcgi-cgi,-main
LIB_DEPENDS=	devel/libev \
		devel/glib2

MODULES=	devel/gettext

CONFIGURE_STYLE= autoconf automake
AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.11
PREFIX-static=	/var/www/${TRUEPREFIX}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include ${CPPFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

post-install:
	${INSTALL_PROGRAM_DIR} ${WRKINST}${PREFIX-static}/bin
	mv ${PREFIX}/bin/fcgi-cgi-static \
	    ${WRKINST}${PREFIX-static}/bin/fcgi-cgi

.include <bsd.port.mk>
