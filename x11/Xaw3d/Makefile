# $OpenBSD: Makefile,v 1.29 2010/10/24 21:15:31 ajacoutot Exp $

COMMENT=	3D Athena Widget set that looks like Motif

DISTNAME=	Xaw3d-1.5
REVISION=	2
SHARED_LIBS=	Xaw3d 11.0
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=widgets/Xaw3d/R6.3/}

# X11/badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt Xau Xdmcp


CONFIGURE_STYLE=imake
MAKE_FLAGS=	SOXAWREV=${LIBXaw3d_VERSION}

WRKDIST=	${WRKDIR}/xc/lib/Xaw3d

post-extract:
	@mkdir -p ${WRKSRC}/X11/Xaw3d
	@cd ${WRKSRC}/X11/Xaw3d; ln -sf ../../*.h .

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Xaw3d
	${INSTALL_DATA} ${WRKSRC}/README.XAW3D ${PREFIX}/share/doc/Xaw3d

.include <bsd.port.mk>
