# $OpenBSD: Makefile,v 1.10 2004/02/18 13:24:37 kevlo Exp $

COMMENT=	"create fonts.scale file for the TrueType font server"

PKGNAME=	ttmkfdir-2.0
DISTNAME=	ttmkfdir2.20021109
CATEGORIES=	x11

HOMEPAGE=	http://people.redhat.com/yshao/

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/ttmkfdir2

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ttmkfdir ${PREFIX}/bin/ttmkfdir

.include <bsd.port.mk>
