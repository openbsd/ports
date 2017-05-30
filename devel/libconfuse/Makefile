# $OpenBSD: Makefile,v 1.15 2017/05/30 20:44:14 ajacoutot Exp $

COMMENT=		configuration file parser library
V=			3.1
DISTNAME=		confuse-${V}
PKGNAME=		lib${DISTNAME}
SHARED_LIBS +=  confuse              2.1      # 2.0
CATEGORIES=		devel

HOMEPAGE=		https://github.com/martinh/libconfuse

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		iconv intl

MASTER_SITES=		https://github.com/martinh/libconfuse/releases/download/v${V}/

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/confuse/manual/search
	${INSTALL_DATA} ${WRKSRC}/doc/html/search/* \
		${PREFIX}/share/doc/confuse/manual/search
	${INSTALL_DATA} ${WRKSRC}/doc/html/{*html,*png,*css,*js} \
		${PREFIX}/share/doc/confuse/manual/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/confuse/tutorial
	${INSTALL_DATA} ${WRKSRC}/doc/tutorial-html/* \
		${PREFIX}/share/doc/confuse/tutorial

.include <bsd.port.mk>
