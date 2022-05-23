COMMENT=	fetch, filter and deliver mail

GH_ACCOUNT=	nicm
GH_PROJECT=	fdm
GH_COMMIT=	c245d210a5b0049f48c78e40af44d2889ecf217f

V=		2.0pl20211129
DISTNAME=	fdm-$V
CATEGORIES=	mail

MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB= c crypto pcre ssl z tdb>=3.0

#MASTER_SITES=	https://github.com/nicm/fdm/releases/download/$V/

DEBUG_PACKAGES=	${BUILD_PACKAGES}
LIB_DEPENDS +=	databases/tdb>=1.2.7 \
		devel/pcre

#CONFIGURE_STYLE =	gnu
CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
CONFIGURE_ARGS =	--enable-pcre

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fdm
	${INSTALL_SCRIPT} ${WRKSRC}/fdm-sanitize ${PREFIX}/share/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/MANUAL ${PREFIX}/share/doc/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fdm
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/fdm

.include <bsd.port.mk>
