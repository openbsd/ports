# $OpenBSD: Makefile,v 1.2 2001/08/21 17:22:53 espie Exp $

COMMENT= 		"embedded documentation in C++"
CATEGORIES=		x11 x11/kde devel
NEED_VERSION=		1.363
VERSION=		2.2
DISTNAME=		kdoc-${VERSION}
DIST_SUBDIR=		kde

HOMEPAGE=		http://www.kde.org
MASTER_SITES=		${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/distribution/tar/generic/src/
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

.include <bsd.port.mk>
