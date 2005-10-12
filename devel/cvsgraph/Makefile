# $OpenBSD: Makefile,v 1.9 2005/10/12 05:38:51 fgsch Exp $

COMMENT=		"graphical representation of CVS repository"

DISTNAME=		cvsgraph-1.5.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel
HOMEPAGE=		http://www.akhphd.au.dk/~bertho/cvsgraph

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPL 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c jpeg m png ttf z

MODULES=		converters/libiconv

MASTER_SITES=		${HOMEPAGE}/release/

LIB_DEPENDS=		gd.18::graphics/gd

ALL_TARGET=		

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBS="-lpng -lttf -ljpeg -lz -liconv"
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
	${INSTALL_MAN}  ${WRKSRC}/cvsgraph.conf.5 ${PREFIX}/man/man5
	${INSTALL_MAN}  ${WRKSRC}/cvsgraph.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
