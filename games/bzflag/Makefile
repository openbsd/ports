# $OpenBSD: Makefile,v 1.5 2004/10/21 05:39:35 jolan Exp $

BROKEN=		"doesn't respect LDFLAGS, problems loading data files"

COMMENT=	"graphical multiplayer 3-d tank war game"
DISTNAME=	bzflag-1.10.8.20041007
PKGNAME=	bzflag-1.10.8
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bzflag/}

HOMEPAGE=	http://www.bzflag.org/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include" LDFLAGS="-L${LOCALBASE}/include"

post-extract:
	@sed -e 's|@LINUX_TRUE@||g ; s|@LINUX_FALSE@|#|g' \
		${WRKSRC}/src/platform/Makefile.in > \
		${WRKSRC}/src/platform/Makefile.sed
	@mv ${WRKSRC}/src/platform/Makefile.sed \
		${WRKSRC}/src/platform/Makefile.in

.include <bsd.port.mk>
