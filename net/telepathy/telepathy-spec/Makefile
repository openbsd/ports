# $OpenBSD: Makefile,v 1.2 2007/12/30 22:54:04 jasper Exp $

COMMENT=		flexible communications framework, specifications

DISTNAME=		telepathy-spec-0.17.0
CATEGORIES+=		books

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-spec/}

BUILD_DEPENDS=		::lang/python/2.5 \
			::textproc/libxslt

USE_GMAKE=		Yes

NO_REGRESS=		Yes

post-patch:
	perl -pi -e 's,!!MODPY_BIN!!,${LOCALBASE}/bin/python2.5,g' ${WRKSRC}/Makefile
	perl -pi -e 's,!!MODPY_BIN!!,${LOCALBASE}/bin/python2.5,g' ${WRKSRC}/tools/*.py

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gtk-doc/html/telepathy-spec/
	${INSTALL_DATA} ${WRKSRC}/doc/{spec.html,telepathy-spec.devhelp2} \
		${PREFIX}/share/gtk-doc/html/telepathy-spec/

.include <bsd.port.mk>
