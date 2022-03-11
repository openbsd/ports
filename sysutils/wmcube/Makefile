COMMENT=		wm-dockapp; shows rotating 3d-object and CPU load

DISTNAME=		wmcube-1.0.2
FIX_EXTRACT_PERMISSIONS=	Yes

CATEGORIES=		sysutils x11 x11/windowmaker

HOMEPAGE=		https://www.dockapps.net/wmcube

# GPLv3
PERMIT_PACKAGE=		Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		https://www.dockapps.net/download/

NO_TEST=		Yes

MAKE_FLAGS+=		CC="${CC}" CFLAGS="${CFLAGS}" LIBDIR="${LDFLAGS}"
MAKE_FILE=		Makefile.OPENBSD

CFLAGS+=		-I${X11BASE}/include -DOPENBSD

LDFLAGS+=		-L${X11BASE}/lib

WRKSRC=			${WRKDIST}/wmcube

3D_OBJECTS=		${PREFIX}/share/wmcube

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/wmcube.c

# nicer than upstream's install target
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmcube ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmcube.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${3D_OBJECTS}
	${INSTALL_DATA} ${WRKDIST}/3D-objects/* ${3D_OBJECTS}

.include <bsd.port.mk>
