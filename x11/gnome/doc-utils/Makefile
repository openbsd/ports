# $OpenBSD: Makefile,v 1.52 2012/03/03 10:30:56 ajacoutot Exp $

# This port does set MODGNOME_TOOLS=yelp on purpose: it would create a
# dependency on itself. We do not enforce dependency on x11/gnome/yelp
# either because it would bring lots of other dependencies.

COMMENT=	collection of documentation utilities for the GNOME project

GNOME_PROJECT=	gnome-doc-utils
GNOME_VERSION=	0.20.7

CATEGORIES=	textproc

# (L)GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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

USE_LIBTOOL=	No
USE_GROFF=	Yes

FAKE_FLAGS+=	pkgconfigdir="${PREFIX}/lib/pkgconfig/"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xml2po/xml2po.1

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/xml2po/

.include <bsd.port.mk>
