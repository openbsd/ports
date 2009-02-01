# $OpenBSD: Makefile,v 1.2 2009/02/01 11:13:34 jasper Exp $

COMMENT=		free UCS outline fonts

V=			20090104
DISTNAME=		freefont-ttf-$V
CATEGORIES=		x11

HOMEPAGE=		http://savannah.gnu.org/projects/freefont/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.savannah.gnu.org/releases/freefont/

WRKDIST=		${WRKDIR}/freefont-$V
NO_BUILD=		Yes
PKG_ARCH=		*
NO_REGRESS=		Yes
FONTSDIR=		${PREFIX}/lib/X11/fonts/freefont

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>
