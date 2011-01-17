# $OpenBSD: Makefile,v 1.25 2011/01/17 00:17:39 jasper Exp $

PKG_ARCH=		*

COMMENT=		flexible communications framework, specifications

DISTNAME=		telepathy-spec-0.21.8
CATEGORIES=		books

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-spec/}

BUILD_DEPENDS=		devel/py-cheetah \
			textproc/libxslt \
			textproc/py-docutils

MODULES+=		lang/python
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	tools/*.py

NO_REGRESS=		Yes

USE_LIBTOOL=		No
CONFIGURE_STYLE=	none

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gtk-doc/html/telepathy-spec/
	${INSTALL_DATA} ${WRKSRC}/doc/spec/* \
		${PREFIX}/share/gtk-doc/html/telepathy-spec/

.include <bsd.port.mk>
