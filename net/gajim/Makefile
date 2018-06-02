# $OpenBSD: Makefile,v 1.82 2018/06/02 12:01:59 jasper Exp $

COMMENT=	jabber client written in pygtk
MODPY_EGG_VERSION=	1.0.3
DISTNAME=	gajim-${MODPY_EGG_VERSION}
REVISION=	0
CATEGORIES=	net x11

HOMEPAGE=	https://www.gajim.org

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

MASTER_SITES=	${HOMEPAGE}/downloads/1.0/

# GPLv3 only
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS=	Yes

COMMON_DEPENDS=	net/avahi,,-python \
		net/py-nbxmpp${MODPY_FLAVOR} \
		security/py-cryptodome${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR} \
		security/py-gnupg${MODPY_FLAVOR} \
		textproc/gspell \
		x11/dbus-python${MODPY_FLAVOR}

BUILD_DEPENDS=	${COMMON_DEPENDS} \
		devel/gettext-tools

RUN_DEPENDS=	${COMMON_DEPENDS} \
		devel/desktop-file-utils \
		devel/py-asn1${MODPY_FLAVOR} \
		graphics/py-cairo${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		security/py-keyring${MODPY_FLAVOR} \
		x11/gtk+3,-guic

.include <bsd.port.mk>
