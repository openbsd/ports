# $OpenBSD: Makefile,v 1.32 2011/01/05 08:19:18 giovanni Exp $

COMMENT=	web server log file analysis program

V=		28
DISTNAME=	webalizer-2.23-03-RB${V}-src
PKGNAME=	webalizer-2.23.03.${V}
CATEGORIES=	www
MASTER_SITES=	http://www.patrickfrei.ch/webalizer/rb${V}/

HOMEPAGE=	http://www.patrickfrei.ch/webalizer/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

LIB_DEPENDS=	databases/db/v4 \
		graphics/gd \
		net/GeoIP

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c db jpeg m png z gd>=18 GeoIP>=5

WRKDIST=	${WRKDIR}/webalizer-2.23-03-RB${V}

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--enable-dns --enable-geoip \
		--with-db=${LOCALBASE}/include/db4 \
		--with-dblib=${LOCALBASE}/lib/db4 \
		--with-gd=${LOCALBASE}/include \
		--mandir=${PREFIX}/man
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LIBS="-ljpeg"

NO_REGRESS=	Yes

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
