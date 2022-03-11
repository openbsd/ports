COMMENT=		free UCS outline fonts

V=			20120503
DISTNAME=		freefont-ttf-$V
CATEGORIES=		fonts x11

HOMEPAGE=		https://www.gnu.org/software/freefont/

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=freefont/}
EXTRACT_SUFX=		.zip

WRKDIST=		${WRKDIR}/freefont-$V
NO_BUILD=		Yes
PKG_ARCH=		*
NO_TEST=		Yes
FONTSDIR=		${PREFIX}/share/fonts/freefont

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>
