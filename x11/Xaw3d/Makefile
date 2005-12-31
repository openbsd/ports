# $OpenBSD: Makefile,v 1.23 2005/12/31 17:29:37 naddy Exp $

COMMENT=	"3D Athena Widget set that looks like Motif"

DISTNAME=	Xaw3d-1.5
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	Xaw3d 11.0
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=widgets/Xaw3d/R6.3/}

# X11/badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xp Xpm Xt 

USE_X11=	Yes

CONFIGURE_STYLE=imake
MAKE_FLAGS=	SOXAWREV=${LIBXaw3d_VERSION}
FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} ${MAKE_FLAGS}

WRKDIST=	${WRKDIR}/xc/lib/Xaw3d

post-extract:
	@mkdir -p ${WRKSRC}/X11/Xaw3d
	@cd ${WRKSRC}/X11/Xaw3d; ln -sf ../../*.h .

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Xaw3d
	${INSTALL_DATA} ${WRKSRC}/README.XAW3D ${PREFIX}/share/doc/Xaw3d

.include <bsd.port.mk>
