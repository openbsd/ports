COMMENT=	documentation repo for eduVPN

GH_ACCOUNT=	eduvpn
GH_PROJECT=	documentation
GH_COMMIT=	35b54464479b428a7c596f671d092d39e24a2e60
DISTNAME=	eduvpn-documentation-3.20230123

# CC-BY-SA
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eduvpn
	cd ${WRKSRC}; pax -rw * ${PREFIX}/share/doc/eduvpn

.include <bsd.port.mk>
