# $OpenBSD: Makefile,v 1.23 2009/09/22 09:29:25 ajacoutot Exp $

COMMENT=	secure webserver

DISTNAME=	hiawatha-6.17.1
CATEGORIES=	www net

HOMEPAGE=	http://www.hiawatha-webserver.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/

WANTLIB=	c crypto pthread ssl xml2

LIB_DEPENDS=	xslt.>=3::textproc/libxslt

WEBROOTDIR=	/var/hiawatha

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libxml2" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		webrootdir=${WEBROOTDIR}
CONFIGURE_ARGS=	--localstatedir=/var \
		--enable-xslt

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/hiawatha/hiawatha.conf.in \
		${WRKSRC}/etc/hiawatha/cgi-wrapper.conf \
		${WRKSRC}/etc/hiawatha/php-fcgi.conf \
		${WRKSRC}/doc/hiawatha.1.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hiawatha/
	${INSTALL_DATA} ${WRKSRC}/etc/hiawatha/*.conf \
		${PREFIX}/share/examples/hiawatha 
	${INSTALL_DATA} ${WRKSRC}/doc/index.html \
		${PREFIX}/share/examples/hiawatha 

.include <bsd.port.mk>
