COMMENT=	documentation repo for eduVPN

GH_ACCOUNT=	eduvpn
GH_PROJECT=	documentation
GH_COMMIT=	2db366b0802dcbea8b5a41d416200ce58b75e2c7
DISTNAME=	eduvpn-documentation-3.20230910

# CC-BY-SA
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eduvpn
	cd ${WRKSRC}; pax -rw * ${PREFIX}/share/doc/eduvpn

.include <bsd.port.mk>
