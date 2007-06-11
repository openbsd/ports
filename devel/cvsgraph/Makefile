# $OpenBSD: Makefile,v 1.12 2007/06/11 20:19:59 jasper Exp $

COMMENT=		graphical representation of CVS repository

DISTNAME=		cvsgraph-1.6.1
CATEGORIES=		devel
HOMEPAGE=		http://www.akhphd.au.dk/~bertho/cvsgraph

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c jpeg m png z

MODULES=		converters/libiconv

MASTER_SITES=		${HOMEPAGE}/release/

LIB_DEPENDS=		gd.>=18::graphics/gd

ALL_TARGET=		

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBS="-lpng -ljpeg -lz -lm -liconv"
CONFIGURE_ARGS=		--with-gd-inc=${LOCALBASE}/include \
			--with-gd-lib=${LOCALBASE}/lib \
			--with-freetype-lib=${X11BASE}/lib

NO_REGRESS=		Yes

pre-build:
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' ${WRKSRC}/cvsgraph.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cvsgraph ${PREFIX}/bin	
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cvsgraph
	${INSTALL_DATA} ${WRKSRC}/cvsgraph.conf \
			${PREFIX}/share/examples/cvsgraph
	${INSTALL_MAN} ${WRKSRC}/cvsgraph.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/cvsgraph.conf.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
