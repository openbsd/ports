#	$OpenBSD: Makefile,v 1.3 2007/10/08 08:22:42 steven Exp $

COMMENT=	incremental backup
DISTNAME=	rdiff-backup-1.0.5
PKGNAME=	${DISTNAME}p1
CATEGORIES=	sysutils
HOMEPAGE=	http://www.nongnu.org/rdiff-backup/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS+=		rsync::net/librsync

MASTER_SITES=		http://savannah.nongnu.org/download/rdiff-backup/

MODULES=		lang/python

NO_REGRESS=		Yes

.include <bsd.port.mk>
