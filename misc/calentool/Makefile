# $OpenBSD: Makefile,v 1.25 2010/10/18 20:52:07 espie Exp $

COMMENT=	nice X11-based calendar/scheduling tool (using XView)

DISTNAME=	calentool-2.3
REVISION=	3
CATEGORIES=	misc x11

MASTER_SITES = 	http://www.darwinsys.com/freeware/

PERMIT_PACKAGE_CDROM=	No Fee
PERMIT_DISTFILES_CDROM=	No Fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m olgx.>=3 xview.>=3

BUILD_DEPENDS=	::x11/xview/config
LIB_DEPENDS=    ::x11/xview/lib

WRKDIST     = ${WRKDIR}/xcalentool-2.3

CONFIGURE_STYLE=imake
USE_X11=	Yes
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config \
		EXTRA_INCLUDES=-I${WRKSRC}/include

MAKE_FLAGS=CCOPTIONS=-I${WRKSRC}/include
USE_GROFF =	Yes

pre-configure:
	@mkdir -p ${WRKSRC}/include/images
	@cp ${FILESDIR}/hglass.cursor	${WRKSRC}/include/images

NO_REGRESS=	Yes

.include <bsd.port.mk>
