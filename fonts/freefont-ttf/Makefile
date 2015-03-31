# $OpenBSD: Makefile,v 1.3 2015/03/31 09:45:10 ajacoutot Exp $

COMMENT=		free UCS outline fonts

V=			20100919
DISTNAME=		freefont-ttf-$V
REVISION=		1
CATEGORIES=		fonts x11

HOMEPAGE=		http://savannah.gnu.org/projects/freefont/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=freefont/}

WRKDIST=		${WRKDIR}/freefont-$V
NO_BUILD=		Yes
PKG_ARCH=		*
NO_TEST=		Yes
FONTSDIR=		${PREFIX}/share/fonts/freefont

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>
