# $OpenBSD: Makefile,v 1.39 2014/03/17 23:22:21 sthen Exp $

COMMENT=	web server log file analysis program

V=		29
DISTNAME=	webalizer-2.23-05-RB${V}-src
PKGNAME=	webalizer-2.23.05.${V}
REVISION=	4
CATEGORIES=	www
MASTER_SITES=	http://www.patrickfrei.ch/webalizer/rb${V}/

HOMEPAGE=	http://www.patrickfrei.ch/webalizer/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

LIB_DEPENDS=	databases/db/v4 \
		graphics/gd \
		net/GeoIP

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	GeoIP>=5 c db gd>=18 m png pthread z

WRKDIST=	${WRKDIR}/webalizer-2.23-05-RB${V}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-dns \
		--enable-geoip \
		--with-db=${LOCALBASE}/include/db4 \
		--with-dblib=${LOCALBASE}/lib/db4 \
		--with-gd=${LOCALBASE}/include
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \

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
