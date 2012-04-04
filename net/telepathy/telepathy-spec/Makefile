# $OpenBSD: Makefile,v 1.32 2012/04/04 17:51:54 jasper Exp $

PKG_ARCH=		*

COMMENT=		flexible communications framework, specifications

DISTNAME=		telepathy-spec-0.26.0
CATEGORIES=		books

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-spec/}

BUILD_DEPENDS=		devel/py-cheetah \
			textproc/libxslt \
			textproc/py-docutils

MODULES+=		lang/python
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	tools/*.py

NO_REGRESS=		Yes

USE_LIBTOOL=		No
CONFIGURE_STYLE=	none
MAKE_FLAGS+=		PYTHON=${MODPY_BIN}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gtk-doc/html/telepathy-spec/
	${INSTALL_DATA} ${WRKSRC}/doc/spec/* \
		${PREFIX}/share/gtk-doc/html/telepathy-spec/

.include <bsd.port.mk>
