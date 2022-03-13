COMMENT=	fully-featured XMPP client written in Python
MODPY_EGG_VERSION=	1.3.3
DISTNAME=	gajim-${MODPY_EGG_VERSION}
CATEGORIES=	net x11

HOMEPAGE=	https://www.gajim.org

MAINTAINER=	Paco Esteban <paco@openbsd.org>

MASTER_SITES=	${HOMEPAGE}/downloads/1.3/
# upstream did not include the plugin installer on 1.3.3 again
# and fixed it on 1.3.3-2
# https://dev.gajim.org/gajim/gajim/-/issues/10719
DISTFILES=	gajim-${MODPY_EGG_VERSION}-2${EXTRACT_SUFX}

# GPLv3 only
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	audio/gsound \
		devel/desktop-file-utils \
		devel/glib2>=2.6.0 \
		devel/libsoup \
		graphics/py-Pillow${MODPY_FLAVOR} \
		graphics/py-cairo${MODPY_FLAVOR} \
		net/py-nbxmpp${MODPY_FLAVOR}>=2.0.4 \
		security/py-cryptodome${MODPY_FLAVOR} \
		security/py-gnupg${MODPY_FLAVOR} \
		security/py-keyring${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		textproc/gspell \
		textproc/py-css-parser${MODPY_FLAVOR} \
		textproc/py-precis_i18n${MODPY_FLAVOR} \
		x11/dbus-python${MODPY_FLAVOR} \
		x11/gtk+3,-guic

.include <bsd.port.mk>
