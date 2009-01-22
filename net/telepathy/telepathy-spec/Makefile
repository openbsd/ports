# $OpenBSD: Makefile,v 1.14 2009/01/22 16:06:05 jasper Exp $

PKG_ARCH=		*

COMMENT=		flexible communications framework, specifications

DISTNAME=		telepathy-spec-0.17.17
PKGNAME=		${DISTNAME}p1
CATEGORIES=		books

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-spec/}

BUILD_DEPENDS=		::textproc/libxslt \
			::textproc/py-docutils

MODULES+=		lang/python
MODPY_RUNDEP=		No

USE_GMAKE=		Yes

NO_REGRESS=		Yes

CONFIGURE_STYLE=	none

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/tools/*.py

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gtk-doc/html/telepathy-spec/
	${INSTALL_DATA} ${WRKSRC}/doc/{spec.html,telepathy-spec.devhelp2} \
		${PREFIX}/share/gtk-doc/html/telepathy-spec/

.include <bsd.port.mk>
