# $OpenBSD: Makefile,v 1.27 2009/09/15 17:37:22 jasper Exp $

COMMENT=	web server log file analysis program

DISTNAME=	webalizer-2.01-10-RB21-src
PKGNAME=	webalizer-2.01.10p8
CATEGORIES=	www
MASTER_SITES=	http://www.patrickfrei.ch/webalizer/rb21/

HOMEPAGE=	http://www.patrickfrei.ch/webalizer/

LIB_DEPENDS=	gd.>=18::graphics/gd \
		GeoIP.>=5::net/GeoIP

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c jpeg m png z

MODULES=	converters/libiconv

WRKDIST=	${WRKDIR}/webalizer-2.01-10-RB21

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--enable-dns --enable-geoip
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LIBS="-ljpeg"

NO_REGRESS=	Yes

pre-patch:
	tr -d \\r <${WRKSRC}/sample.conf >${WRKSRC}/sample.conf.new && \
	    mv ${WRKSRC}/sample.conf.new ${WRKSRC}/sample.conf

post-install:
	cd ${PREFIX}/bin && ln -s webalizer webazolver
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/webalizer
	${INSTALL_DATA} ${WRKSRC}/DNS.README ${PREFIX}/share/doc/webalizer/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/webalizer/
	${INSTALL_DATA} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/webalizer/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/webalizer
	${INSTALL_DATA} ${WRKSRC}/sample.conf \
		${PREFIX}/share/examples/webalizer/

.include <bsd.port.mk>
