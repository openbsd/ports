# $OpenBSD: Makefile,v 1.3 2008/01/01 22:28:10 jasper Exp $

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.1.4
PKGNAME=		${DISTNAME}p0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-butterfly/}

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::net/telepathy/telepathy-python

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dbus-1/services
	${INSTALL_DATA} ${WRKSRC}/data/org.freedesktop.Telepathy.ConnectionManager.butterfly.service \
		${PREFIX}/share/dbus-1/services

.include <bsd.port.mk>
