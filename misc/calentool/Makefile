# $OpenBSD: Makefile,v 1.8 2000/04/03 01:26:53 espie Exp $

DISTNAME=	calentool-2.3
CATEGORIES=	misc x11
NEED_VERSION=	1.230
MASTER_SITES = 	http://www.darwinsys.com/freeware/

PERMIT_PACKAGE_CDROM=	No Fee
PERMIT_DISTFILES_CDROM=	No Fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${X11BASE}/lib/X11/config/XView.cf::x11/xview/config
LIB_DEPENDS=    xview.3.::x11/xview/lib

WRKDIST     = ${WRKDIR}/xcalentool-2.3

USE_IMAKE=	Yes
USE_X11=	Yes
PREFIX=		${X11BASE}
FAKE=		Yes

MAKE_FLAGS=CCOPTIONS=-I${WRKSRC}/include DATELIB_DIR=${PREFIX}/lib/calentool
FAKE_FLAGS=${MAKE_FLAGS}

pre-configure:
	@mkdir -p ${WRKSRC}/include/images
	@cp ${FILESDIR}/hglass.cursor	${WRKSRC}/include/images

.include <bsd.port.mk>
