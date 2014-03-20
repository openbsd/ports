# $OpenBSD: Makefile,v 1.38 2014/03/20 20:28:43 jasper Exp $

PKG_ARCH=		*

COMMENT=		flexible communications framework, specifications

DISTNAME=		telepathy-spec-0.99.8
CATEGORIES=		books

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-spec/}

BUILD_DEPENDS=		devel/py-cheetah \
			textproc/libxslt \
			textproc/py-docutils

MODULES+=		lang/python
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	tools/*.py

NO_TEST=		Yes

CONFIGURE_STYLE=	none
MAKE_FLAGS+=		PYTHON=${MODPY_BIN}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gtk-doc/html/telepathy-spec/
	${INSTALL_DATA} ${WRKSRC}/doc/spec/* \
		${PREFIX}/share/gtk-doc/html/telepathy-spec/

.include <bsd.port.mk>
