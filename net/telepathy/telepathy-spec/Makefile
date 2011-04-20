# $OpenBSD: Makefile,v 1.28 2011/04/20 17:35:12 jasper Exp $

PKG_ARCH=		*

COMMENT=		flexible communications framework, specifications

DISTNAME=		telepathy-spec-0.22.2
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

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gtk-doc/html/telepathy-spec/
	${INSTALL_DATA} ${WRKSRC}/doc/spec/* \
		${PREFIX}/share/gtk-doc/html/telepathy-spec/

.include <bsd.port.mk>
