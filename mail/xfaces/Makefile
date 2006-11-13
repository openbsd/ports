# $OpenBSD: Makefile,v 1.25 2006/11/13 11:20:25 steven Exp $

COMMENT=	"mail image display for X11"

DISTNAME=	xfaces-3.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail

# xfaces-sounds.tar.gz only in LOCAL_PORTS
MASTER_SITES=	ftp://ftp.cs.indiana.edu/pub/faces/xfaces/ \
		ftp://ftp.uni-bielefeld.de/pub/systems/FreeBSD/lkoeller/
DISTFILES=	${DISTNAME}.tar.Z xfaces-sounds.tar.gz

# License: "BSD NO"
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c m

LIB_DEPENDS=	compface::mail/faces

CONFIGURE_STYLE=imake
USE_X11=	Yes

post-extract:
	@ln -sf ../sounds ${WRKSRC}

NO_REGRESS=	Yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/sounds
	@${INSTALL_DATA_DIR} ${PREFIX}/include/X11/pixmaps

.include <bsd.port.mk>
