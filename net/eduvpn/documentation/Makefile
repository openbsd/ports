COMMENT=	documentation repo for eduVPN

GH_ACCOUNT=	eduvpn
GH_PROJECT=	documentation
GH_COMMIT=	e369beb450323255839205bd880415287333d517
DISTNAME=	eduvpn-documentation-3.20221130

# CC-BY-SA
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eduvpn
	cd ${WRKSRC}; pax -rw * ${PREFIX}/share/doc/eduvpn

.include <bsd.port.mk>
