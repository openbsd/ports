# $OpenBSD: Makefile,v 1.1 2003/04/24 21:42:38 matthieu Exp $

COMMENT=	"X11 Cursors themes"

DISTNAME=	xcursorgen-4.3.99.2
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

MASTER_SITES=		http://www.cryptonomicon.org/distfiles/ \
			http://lithely.net/distfiles/


USE_X11=		Yes
CONFIGURE_STYLE=	imake

pre-configure:
	@sed -e s,@LOCALBASE@,${LOCALBASE}, < ${FILESDIR}/host.def \
	> ${WRKSRC}/host.def

NO_REGRESS=		Yes

.include <bsd.port.mk>
