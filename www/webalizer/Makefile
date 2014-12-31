# $OpenBSD: Makefile,v 1.45 2014/12/31 08:51:05 jasper Exp $

COMMENT=	web server log file analysis program

RB_V=		30
V=		2.23-08-RB${RB_V}
DISTNAME=	webalizer-${V}-src
PKGNAME=	webalizer-${V:S/-/./g:S/RB//}
REVISION=	3
CATEGORIES=	www

HOMEPAGE=	http://www.patrickfrei.ch/webalizer/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/rb${RB_V}/

WANTLIB=	GeoIP>=5 c db gd>=18 m png pthread z

LIB_DEPENDS=	databases/db/v4 \
		graphics/gd \
		net/GeoIP

WRKDIST=	${WRKDIR}/webalizer-${V}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-dns \
		--enable-geoip \
		--with-db=${LOCALBASE}/include/db4 \
		--with-dblib=${LOCALBASE}/lib/db4 \
		--with-gd=${LOCALBASE}/include \
		--with-geodb=/var/db/GeoDB
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST=	Yes

pre-patch:
	tr -d \\r <${WRKSRC}/sample.conf >${WRKSRC}/sample.conf.new && \
	    mv ${WRKSRC}/sample.conf.new ${WRKSRC}/sample.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/webalizer
	${INSTALL_DATA} ${WRKSRC}/DNS.README ${PREFIX}/share/doc/webalizer/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/webalizer/
	${INSTALL_DATA} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/webalizer/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/webalizer
	${INSTALL_DATA} ${WRKSRC}/sample.conf \
		${PREFIX}/share/examples/webalizer/

.include <bsd.port.mk>
