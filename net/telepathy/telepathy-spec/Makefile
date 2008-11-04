# $OpenBSD: Makefile,v 1.9 2008/11/04 23:10:21 jasper Exp $

COMMENT=		flexible communications framework, specifications

DISTNAME=		telepathy-spec-0.17.14
CATEGORIES=		books

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-spec/}

BUILD_DEPENDS=		::lang/python/2.5 \
			::textproc/libxslt \
			::textproc/py-docutils

USE_GMAKE=		Yes

NO_REGRESS=		Yes

PKG_ARCH=		*

pre-configure:
	perl -pi -e 's,!!MODPY_BIN!!,${LOCALBASE}/bin/python2.5,g' ${WRKSRC}/Makefile
	perl -pi -e 's,!!MODPY_BIN!!,${LOCALBASE}/bin/python2.5,g' ${WRKSRC}/tools/*.py

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gtk-doc/html/telepathy-spec/
	${INSTALL_DATA} ${WRKSRC}/doc/{spec.html,telepathy-spec.devhelp2} \
		${PREFIX}/share/gtk-doc/html/telepathy-spec/

.include <bsd.port.mk>
