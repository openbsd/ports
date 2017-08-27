# $OpenBSD: Makefile,v 1.8 2017/08/27 08:54:08 sthen Exp $

ADDON_NAME =		tor-launcher
V =			0.2.12.3
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
