# $OpenBSD: Makefile,v 1.4 2001/09/19 15:20:12 espie Exp $

COMMENT=		"X11 toolkit, libraries documentation"
CATEGORIES=		x11 x11/kde devel
NEED_VERSION=		1.458
VERSION=		2.2.1
PKGNAME=		kdelibs-doc-${VERSION}

HOMEPAGE=		http://www.kde.org
DISTFILES=

BUILD_DEPENDS=	::x11/kde/kdoc2 ::x11/kde/libs2:patch ::x11/qt2,-html

MAINTAINER=	Marc Espie <espie@openbsd.org>

WRKDIST=	${WRKDIR}
DDIR=		${PREFIX}/share/doc/html/kdelibs

KSRC=`cd ${PORTSDIR} && cd x11/kde/libs2 && make show=WRKSRC`

do-build:
	qt2kdoc -u "file:${LOCALBASE}/share/doc/qt2/html" \
	    -o ${WRKDIST} ${LOCALBASE}/share/doc/qt2/html

do-install:
	mkdir -p ${DDIR}
	makekdedoc --libdir=${WRKDIST} --outputdir ${DDIR} \
	    --url "file:${TRUEPREFIX}/share/doc/html/kdelibs" \
	    --srcdir ${KSRC}

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes


.include <bsd.port.mk>
