# $OpenBSD: Makefile,v 1.70 2020/06/09 07:19:28 jasper Exp $

# This port does set MODGNOME_TOOLS=yelp on purpose: it would create a
# dependency on itself. We do not enforce dependency on x11/gnome/yelp
# either because it would bring lots of other dependencies.

COMMENT=	collection of documentation utilities for the GNOME project

GNOME_PROJECT=	gnome-doc-utils
GNOME_VERSION=	0.20.10
REVISION=	7

CATEGORIES=	textproc

# (L)GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python \
		x11/gnome

MODPY_VERSION =${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=	textproc/docbook \
		textproc/libxml,-python \
		textproc/libxslt \
		textproc/rarian

RUN_DEPENDS=	textproc/docbook \
		textproc/libxml,-python \
		textproc/libxslt \
		misc/gnugetopt

# convenient dependency: provides the scrollkeeper-* tools
RUN_DEPENDS +=	textproc/rarian

AUTOCONF_VERSION=2.67
CONFIGURE_STYLE=autoconf no-autoheader

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xml2po/xml2po.1

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/xml2po/

.include <bsd.port.mk>
