# $OpenBSD: Makefile,v 1.74 2010/10/18 18:36:46 espie Exp $

COMMENT=	get files from FTP, Gopher, HTTP or HTTPS servers

DISTNAME=	curl-7.21.2
SHARED_LIBS=	curl                 17.0     # .6.0
CATEGORIES=	net
MASTER_SITES=	http://curl.haxx.se/download/ \
		ftp://ftp.sunet.se/pub/www/utilities/curl/

HOMEPAGE=	http://curl.haxx.se/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext
LIB_DEPENDS=	::devel/libidn
WANTLIB=	c crypto idn ssl z

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-ca-bundle=/etc/ssl/cert.pem \
		--with-random="/dev/arandom" \
		--with-libidn=${LOCALBASE} \
		--without-libssh2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	cd ${WRKSRC}; ${INSTALL_DATA} curl-style.el \
		${PREFIX}/share/emacs/site-lisp

# Note:
# use ulimit -p 256 for regress

.include <bsd.port.mk>
