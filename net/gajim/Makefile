# $OpenBSD: Makefile,v 1.89 2020/07/03 21:12:59 sthen Exp $

COMMENT=	jabber client written in pygtk
MODPY_EGG_VERSION=	1.1.3
DISTNAME=	gajim-${MODPY_EGG_VERSION}
CATEGORIES=	net x11
REVISION=	0

HOMEPAGE=	https://www.gajim.org

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

MASTER_SITES=	${HOMEPAGE}/downloads/1.1/

# GPLv3 only
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	devel/desktop-file-utils \
		graphics/py-Pillow${MODPY_FLAVOR} \
		graphics/py-cairo${MODPY_FLAVOR} \
		net/py-nbxmpp${MODPY_FLAVOR}>=0.6.10 \
		security/py-cryptodome${MODPY_FLAVOR} \
		security/py-gnupg${MODPY_FLAVOR} \
		security/py-keyring${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR} \
		textproc/gspell \
		textproc/py-cssutils${MODPY_FLAVOR} \
		textproc/py-precis_i18n \
		x11/dbus-python${MODPY_FLAVOR} \
		x11/gtk+3,-guic

.include <bsd.port.mk>
