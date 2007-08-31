#	$OpenBSD: Makefile,v 1.1.1.1 2007/08/31 10:23:51 jsg Exp $

COMMENT=	"incremental backup"
DISTNAME=	rdiff-backup-1.0.5

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
