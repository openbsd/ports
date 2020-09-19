# $OpenBSD: Makefile,v 1.90 2020/09/19 07:52:24 solene Exp $

COMMENT=	jabber client written in pygtk
MODPY_EGG_VERSION=	1.2.0
DISTNAME=	gajim-${MODPY_EGG_VERSION}
CATEGORIES=	net x11

HOMEPAGE=	https://www.gajim.org

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

MASTER_SITES=	${HOMEPAGE}/downloads/1.2/

# GPLv3 only
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/glib2>=2.6.0 \
		devel/libsoup \
		graphics/py-Pillow${MODPY_FLAVOR} \
		graphics/py-cairo${MODPY_FLAVOR} \
		net/py-nbxmpp${MODPY_FLAVOR}>=1.0.0 \
		security/py-cryptodome${MODPY_FLAVOR} \
		security/py-gnupg${MODPY_FLAVOR} \
		security/py-keyring${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		textproc/gspell \
		textproc/py-css-parser${MODPY_FLAVOR} \
		textproc/py-precis_i18n \
		x11/dbus-python${MODPY_FLAVOR} \
		x11/gtk+3,-guic

.include <bsd.port.mk>
