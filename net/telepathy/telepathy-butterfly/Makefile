# $OpenBSD: Makefile,v 1.1.1.1 2007/10/27 16:18:54 jasper Exp $

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.1.4

MASTER_SITES=		http://telepathy.freedesktop.org/releases/telepathy-butterfly/

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/py-gobject \
			::textproc/libxslt \
			::net/pymsn \
			::x11/dbus-python

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dbus-1/services
	${INSTALL_DATA} ${WRKSRC}/data/org.freedesktop.Telepathy.ConnectionManager.butterfly.service \
		${PREFIX}/share/dbus-1/services

.include <bsd.port.mk>
