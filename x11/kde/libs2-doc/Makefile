# $OpenBSD: Makefile,v 1.7 2002/04/08 20:50:40 espie Exp $

COMMENT=		"X11 toolkit, libraries documentation"
CATEGORIES=		x11 x11/kde devel
NEED_VERSION=		1.504
VERSION=		2.2.2
PKGNAME=		kdelibs-doc-${VERSION}

DISTNAME=		kdelibs-${VERSION}
HOMEPAGE=		http://www.kde.org
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/src
EXTRACT_SUFX=		.tar.bz2
DIST_SUBDIR=	kde

BUILD_DEPENDS=	::x11/kde/kdoc2 ::x11/qt2,-html

MAINTAINER=	Marc Espie <espie@openbsd.org>

DDIR=		${PREFIX}/share/doc/html/kdelibs
PATCH_LIST=${PORTSDIR}/x11/kde/libs2/patches/{p,patch}-*

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

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes


.include <bsd.port.mk>
