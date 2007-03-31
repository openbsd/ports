# $OpenBSD: Makefile,v 1.3 2007/03/31 12:45:40 steven Exp $

COMMENT=	"go client and fully featured sgf editor"

DISTNAME=	qgo-1.5.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m pthread stdc++ X11 Xext SM ICE jpeg

MODULES=	x11/qt3

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qgo/}

WRKDIST=	${WRKDIR}/${DISTNAME:S/-r1//}

USE_X11=Yes 
USE_GMAKE=Yes
USE_LIBTOOL=Yes

NO_REGRESS= Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include \
		 --with-extra-libs=${LOCALBASE}/lib \
		 ${MODQT_CONFIGURE_ARGS}

.include <bsd.port.mk>
