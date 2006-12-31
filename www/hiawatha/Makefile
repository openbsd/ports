# $OpenBSD: Makefile,v 1.1.1.1 2006/12/31 10:32:42 ajacoutot Exp $

COMMENT=	"secure webserver"

DISTNAME=	hiawatha-5.4
CATEGORIES=	www net

HOMEPAGE=	http://hiawatha.leisink.org

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

WANTLIB=	c crypto pthread ssl

WEBROOTDIR=	/var/hiawatha

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	webrootdir=${WEBROOTDIR}
CONFIGURE_ARGS=	--localstatedir=/var

pre-configure:
	perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g;' \
		-e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		${WRKSRC}/etc/hiawatha/httpd.conf.in \
		${WRKSRC}/etc/hiawatha/cgi_wrapper.conf \
		${WRKSRC}/doc/cgi_wrapper.1 \
		${WRKSRC}/doc/hiawatha.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hiawatha/
	${INSTALL_DATA} ${WRKSRC}/etc/hiawatha/*.conf \
		${PREFIX}/share/examples/hiawatha 
	${INSTALL_DATA} ${WRKSRC}/doc/index.html \
		${PREFIX}/share/examples/hiawatha 

.include <bsd.port.mk>
