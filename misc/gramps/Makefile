# $OpenBSD: Makefile,v 1.30 2014/03/14 17:26:18 ajacoutot Exp $

COMMENT=		Genealogical Research Analysis Management Programming System

MODPY_EGG_VERSION=	4.0.3
DISTNAME=		gramps-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		misc x11

HOMEPAGE=		http://www.gramps-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gramps/}

MODULES=		lang/python \
			textproc/intltool

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3 \
			devel/xdg-utils \
			graphics/goocanvas \
			graphics/libgexiv2 \
			graphics/py-Pillow \
			math/graphviz \
			misc/shared-mime-info \
			textproc/gtkspell3 \
			www/webkit \
			x11/gtk+2,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

# XXX missing: py-osmgpsmap
# XXX missing: PyICU

MODPY_DISTUTILS_BUILD=	build

pre-configure:
	perl -pi -e 's,/usr/share,${PREFIX}/share,g' ${WRKSRC}/data/gramps.keys.in
	perl -pi -e 's,share/man,man,g' ${WRKSRC}/setup.py

post-install:
	echo -n '${TRUEPREFIX}/share' \
		>${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gramps/gen/utils/resource-path
	gunzip ${PREFIX}/man/*/{,*}/*.gz

.include <bsd.port.mk>
