# $OpenBSD: Makefile,v 1.7 2002/10/28 21:44:32 espie Exp $

COMMENT=		"X11 toolkit, libraries documentation"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.0.4
PKGNAME=		kdelibs-doc-${VERSION}

DISTFILES=
EXTRACT_ONLY=

BUILD_DEPENDS=	::x11/kde/kdoc3 ::x11/qt3,-html ::x11/kde/libs3:patch

MAINTAINER=	Marc Espie <espie@openbsd.org>

DDIR=		${PREFIX}/share/doc/html/kdelibs
CONFIGURE_STYLE=
MODULES=
PATCH_LIST=

post-patch:
	mkdir -p ${WRKDIST}/qt

do-build:
	qt2kdoc -u "file:${LOCALBASE}/share/doc/qt3/html" \
	    -o ${WRKDIST}/qt ${LOCALBASE}/share/doc/qt3/html

do-install:
	mkdir -p ${DDIR}
	makekdedoc --libdir=${WRKDIST}/qt --outputdir ${DDIR} \
	    --url "file:${TRUEPREFIX}/share/doc/html/kdelibs" \
	    --srcdir ${WRKDIST}/x11/kde/libs3/kdelibs-${VERSION}

.include <bsd.port.mk>
