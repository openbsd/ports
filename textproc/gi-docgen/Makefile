COMMENT=		documentation generator for GObject-based libraries

GNOME_PROJECT=		gi-docgen
GNOME_VERSION=		2024.1
REVISION=		1

# override gnome MODULE
SITES ?=         	${SITE_GNOME:=sources/${GNOME_PROJECT}/${GNOME_VERSION:C/^([0-9]+)\..*/\1/}/}

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python \
			x11/gnome

MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		sysutils/py-packaging \
			textproc/py-MarkupSafe \
			textproc/py-markdown \
			textproc/py-pygments \
			textproc/py-typogrify \
			www/py-jinja2

TEST_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
