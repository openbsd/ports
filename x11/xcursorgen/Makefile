# $OpenBSD: Makefile,v 1.8 2004/12/19 17:15:18 alek Exp $

COMMENT=	"X11 Cursors themes"

DISTNAME=	xcursorgen-4.4
WRKDIST=	${WRKDIR}/${DISTNAME:C/-.*//}
CATEGORIES=	x11
HOMEPAGE=	http://www.xfree86.org/

LIB_DEPENDS=	png.2::graphics/png

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xcursor Xext Xrender c m z

MASTER_SITES= 		http://users.codefusionis.com/~jolan/


USE_X11=		Yes
CONFIGURE_STYLE=	imake

NOT_FOR_ARCHS=		hp300

pre-configure:
	@sed -e s,@LOCALBASE@,${LOCALBASE}, < ${FILESDIR}/host.def \
	> ${WRKSRC}/host.def

NO_REGRESS=		Yes

.include <bsd.port.mk>
