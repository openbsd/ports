# $OpenBSD: Makefile,v 1.59 2013/03/29 10:45:48 ajacoutot Exp $

# This port does set MODGNOME_TOOLS=yelp on purpose: it would create a
# dependency on itself. We do not enforce dependency on x11/gnome/yelp
# either because it would bring lots of other dependencies.

COMMENT=	collection of documentation utilities for the GNOME project

GNOME_PROJECT=	gnome-doc-utils
GNOME_VERSION=	0.20.10
REVISION=	0

CATEGORIES=	textproc

# (L)GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/docbook \
		sysutils/ggrep \
		textproc/rarian
RUN_DEPENDS=	devel/gettext \
		misc/gnugetopt \
		textproc/libxml,-python \
		textproc/libxslt \
		textproc/rarian

AUTOCONF_VERSION=2.67
CONFIGURE_STYLE=autoconf no-autoheader

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xml2po/xml2po.1

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/xml2po/

.include <bsd.port.mk>
