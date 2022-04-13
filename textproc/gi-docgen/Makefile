COMMENT=		documentation generator for GObject-based libraries

GNOME_PROJECT=		gi-docgen
GNOME_VERSION=		2022.1

# override gnome MODULE
MASTER_SITES ?=         ${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${GNOME_VERSION:C/^([0-9]+)\..*/\1/}/}

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python \
			x11/gnome

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		textproc/py-MarkupSafe${MODPY_FLAVOR} \
			textproc/py-markdown${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR} \
			textproc/py-typogrify${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

TEST_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
