# $OpenBSD: Makefile,v 1.5 2008/05/26 08:32:57 ajacoutot Exp $

COMMENT=		flexible communications framework, specifications

DISTNAME=		telepathy-spec-0.17.1
PKGNAME=		${DISTNAME}p0
CATEGORIES+=		books net

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-spec/}

BUILD_DEPENDS=		::lang/python/2.5 \
			::textproc/libxslt
RUN_DEPENDS=		:devhelp-*:x11/gnome/devhelp

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
