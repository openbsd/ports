COMMENT=		programming font focused on source code legibility

V=			2.201
DISTNAME=		0xProto_${V:S/./_/}
PKGNAME=		0xProto-${V}
EXTRACT_SUFX=		.zip

CATEGORIES=		fonts x11

# OFL-1.1
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/0xType/0xProto/releases/download/${V}/

NO_BUILD=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/0xProto
	${INSTALL_DATA} ${WRKDIR}/0xProto-* ${PREFIX}/share/fonts/0xProto/

.include <bsd.port.mk>
