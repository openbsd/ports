# $OpenBSD: Makefile,v 1.8 2002/04/10 01:24:39 espie Exp $

COMMENT=		"X11 toolkit, libraries documentation"
CATEGORIES=		x11 x11/kde devel
NEED_VERSION=		1.504
VERSION=		2.2.2
PKGNAME=		kdelibs-doc-${VERSION}

DISTNAME=		kdelibs-${VERSION}

BUILD_DEPENDS=	::x11/kde/kdoc2 ::x11/qt2,-html

MAINTAINER=	Marc Espie <espie@openbsd.org>

DDIR=		${PREFIX}/share/doc/html/kdelibs
PATCH_LIST=${PORTSDIR}/x11/kde/libs2/patches/{p,patch}-*
CONFIGURE_STYLE=
MODULES=

post-patch:
	mkdir -p ${WRKDIST}/qt

do-build:
	qt2kdoc -u "file:${LOCALBASE}/share/doc/qt2/html" \
	    -o ${WRKDIST}/qt ${LOCALBASE}/share/doc/qt2/html

do-install:
	mkdir -p ${DDIR}
	makekdedoc --libdir=${WRKDIST}/qt --outputdir ${DDIR} \
	    --url "file:${TRUEPREFIX}/share/doc/html/kdelibs" \
	    --srcdir ${WRKDIST}

.include <bsd.port.mk>
