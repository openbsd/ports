# $OpenBSD: Makefile,v 1.11 2000/03/24 23:28:02 espie Exp $

BROKEN=	bad packing lists and depend xview is broken
#tar: Unable to access bin/workman <No such file or directory>
#tar: Unable to access lib/help/workman.info <No such file or directory>
#tar: Unable to access man/cat1/workman.0 <No such file or directory>
#tar: Unable to access man/cat5/workmandb.5 <No such file or directory>

DISTNAME=	WorkMan-1.3a
PKGNAME=	workman-1.3a
CATEGORIES=	audio
NEED_VERSION=	 1.230
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= applications/WorkMan

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

LIB_DEPENDS=	xview.3.2::x11/xview-lib

USE_IMAKE=	yes

WRKDIST=		${WRKDIR}/workman

.include <bsd.port.mk>
