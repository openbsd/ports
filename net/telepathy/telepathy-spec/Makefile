# $OpenBSD: Makefile,v 1.21 2010/09/23 13:47:57 jasper Exp $

PKG_ARCH=		*

COMMENT=		flexible communications framework, specifications

DISTNAME=		telepathy-spec-0.20.1
CATEGORIES=		books

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-spec/}

BUILD_DEPENDS=		::devel/py-cheetah \
			::textproc/libxslt \
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
	${INSTALL_DATA} ${WRKSRC}/doc/spec/* \
		${PREFIX}/share/gtk-doc/html/telepathy-spec/

.include <bsd.port.mk>
