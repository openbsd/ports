# $OpenBSD: Makefile,v 1.14 2019/05/01 17:36:30 landry Exp $

ADDON_NAME =		tor-launcher
V =			0.2.16.6
REVISION =		0
COMMENT =		Tor Browser add-on to manage tor instance
GUID =			tor-launcher@torproject.org
PKGNAME =		${TB_NAME}
ALL_TARGET =		package
USE_GMAKE =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${BROWSER_NAME}
	${SUBST_DATA} ${FILESDIR}/torrc-defaults \
		${PREFIX}/share/${BROWSER_NAME}/torrc-defaults

.include <bsd.port.mk>
