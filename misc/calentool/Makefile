# $OpenBSD: Makefile,v 1.16 2002/10/27 21:07:53 naddy Exp $

COMMENT=	"nice X11-based calendar/scheduling tool (using XView)"

DISTNAME=	calentool-2.3
CATEGORIES=	misc x11

MASTER_SITES = 	http://www.darwinsys.com/freeware/

PERMIT_PACKAGE_CDROM=	No Fee
PERMIT_DISTFILES_CDROM=	No Fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::x11/xview/config
LIB_DEPENDS=    xview.3,olgx.3::x11/xview/lib

WRKDIST     = ${WRKDIR}/xcalentool-2.3

CONFIGURE_STYLE=imake
USE_X11=	Yes
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

MAKE_FLAGS=CCOPTIONS=-I${WRKSRC}/include
FAKE_FLAGS=${MAKE_FLAGS}

pre-configure:
	@mkdir -p ${WRKSRC}/include/images
	@cp ${FILESDIR}/hglass.cursor	${WRKSRC}/include/images

NO_REGRESS=	Yes

.include <bsd.port.mk>
