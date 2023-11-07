COMMENT=	graphical front-end to the diff program

DISTNAME=	tkdiff-4.2
REVISION =	3
CATEGORIES=	devel sysutils

HOMEPAGE=	https://tkdiff.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=tkdiff/}

MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/tkdiff-unix

do-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkdiff

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkdiff ${PREFIX}/bin

.include <bsd.port.mk>
