# $OpenBSD: Makefile,v 1.28 2009/08/10 06:31:45 kili Exp $

COMMENT=	two-dimensional drawing tool and hyper-object browser

VERSION=	4.1.45
DISTNAME=       tgif-QPL-${VERSION}
PKGNAME=        tgif-${VERSION}p2
CATEGORIES=	graphics

MASTER_SITES=	ftp://bourbon.usc.edu/pub/tgif/ \
		${MASTER_SITE_SOURCEFORGE:=tgif/}

HOMEPAGE=	http://bourbon.usc.edu/tgif/

# Trolltech Q License
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

RUN_DEPENDS=	::graphics/netpbm

CONFIGURE_STYLE=imake
USE_X11=	Yes

MAKE_FLAGS=	MODULE_CFLAGS="${CFLAGS}"

post-extract:
	@cp -f ${WRKDIR}/${DISTNAME}/Tgif.tmpl-openbsd \
		${WRKDIR}/${DISTNAME}/Tgif.tmpl

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tgif
	${INSTALL_DATA} ${WRKSRC}/*.obj \
		${WRKSRC}/*.tex ${PREFIX}/share/doc/tgif/
	${INSTALL_DATA} ${WRKSRC}/License \
		${WRKSRC}/README ${PREFIX}/share/doc/tgif/

.include <bsd.port.mk>
