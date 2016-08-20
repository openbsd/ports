# $OpenBSD: Makefile,v 1.2 2016/08/20 12:57:18 ajacoutot Exp $

COMMENT=	Lumina DE localization files

GH_PROJECT=	lumina-i18n
REVISION=	0

BUILD_DEPENDS=	archivers/xz
RUN_DEPENDS=	x11/lumina/lumina

NO_BUILD=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/Lumina-DE/i18n
	xzcat ${WRKSRC}/dist/${GH_PROJECT}.txz | \
		${TAR} xvf - -C ${PREFIX}/share/Lumina-DE/i18n

.include <bsd.port.mk>
