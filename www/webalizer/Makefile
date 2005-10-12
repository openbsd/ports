# $OpenBSD: Makefile,v 1.19 2005/10/12 05:41:07 fgsch Exp $

COMMENT=	"web server log file analysis program"

DISTNAME=	webalizer-2.01-10-src
PKGNAME=	webalizer-2.01.10p2
CATEGORIES=	www
MASTER_SITES=	ftp://ftp.mrunix.net/pub/webalizer/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.mrunix.net/webalizer/

LIB_DEPENDS=	gd.18::graphics/gd

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c jpeg m png ttf z

MODULES=	converters/libiconv

WRKDIST=	${WRKDIR}/webalizer-2.01-10

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--enable-dns
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LIBS="-ljpeg -lttf -liconv"

NO_REGRESS=	Yes

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
