# $OpenBSD: Makefile,v 1.3 2001/01/19 02:52:00 kevlo Exp $

VERSION=	0.7.5
DISTNAME=	gacc_${VERSION}.orig
PKGNAME=	gacc-${VERSION}
CATEGORIES=	misc
NEED_VERSION=	1.351

HOMEPAGE=	http://gacc.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}/programmes/

LIB_DEPENDS=	gtk.1.2::x11/gtk+

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--datadir=${PREFIX}/share/examples/gacc

WRKDIST=        ${WRKDIR}/gacc-${VERSION}.orig

.include <bsd.port.mk>
