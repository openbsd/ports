# $OpenBSD: Makefile,v 1.9 2005/04/12 22:12:40 matthieu Exp $

COMMENT=	"X11 Cursors themes"
DISTNAME=	xcursorgen-6.8.2
WRKDIST=	${WRKDIR}/${DISTNAME:C/-.*//}
CATEGORIES=	x11

HOMEPAGE=	http://wiki.X.Org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

LIB_DEPENDS=	png.2::graphics/png

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES= 		ftp://ftp.laas.fr/pub/ii/matthieu/xorg/

WANTLIB=		X11 Xcursor Xext Xrender c m z

USE_X11=		Yes
CONFIGURE_STYLE=	imake

pre-configure:
	@sed -e s,@LOCALBASE@,${LOCALBASE}, < ${FILESDIR}/host.def \
	> ${WRKSRC}/host.def

NO_REGRESS=		Yes

.include <bsd.port.mk>
