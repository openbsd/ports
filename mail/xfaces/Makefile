# $OpenBSD: Makefile,v 1.30 2009/08/10 06:32:43 kili Exp $

COMMENT=	mail image display for X11

DISTNAME=	xfaces-3.3
PKGNAME=	${DISTNAME}p3
CATEGORIES=	mail

MASTER_SITES=	ftp://ftp.cs.indiana.edu/pub/faces/xfaces/ \
		ftp://ftp.uni-bielefeld.de/pub/systems/FreeBSD/lkoeller/

MASTER_SITES0=	ftp://ftp.enst.fr/distfiles/ \
		ftp://ftp.ntnu.no/pub/OpenBSD/distfiles/ \
		ftp://ftp.smr.ru/pub/0/FreeBSD/releases/distfiles/

DISTFILES=	${DISTNAME}.tar.Z xfaces-sounds.tar.gz:0

# License: "BSD NO"
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c m \
		pthread-stubs xcb

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
