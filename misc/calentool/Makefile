# $OpenBSD: Makefile,v 1.22 2009/08/10 06:33:02 kili Exp $

COMMENT=	nice X11-based calendar/scheduling tool (using XView)

DISTNAME=	calentool-2.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	misc x11

MASTER_SITES = 	http://www.darwinsys.com/freeware/

PERMIT_PACKAGE_CDROM=	No Fee
PERMIT_DISTFILES_CDROM=	No Fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pthread-stubs xcb

BUILD_DEPENDS=	::x11/xview/config
LIB_DEPENDS=    xview.>=3,olgx.>=3::x11/xview/lib

WRKDIST     = ${WRKDIR}/xcalentool-2.3

CONFIGURE_STYLE=imake
USE_X11=	Yes
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

MAKE_FLAGS=CCOPTIONS=-I${WRKSRC}/include

pre-configure:
	@mkdir -p ${WRKSRC}/include/images
	@cp ${FILESDIR}/hglass.cursor	${WRKSRC}/include/images

NO_REGRESS=	Yes

.include <bsd.port.mk>
