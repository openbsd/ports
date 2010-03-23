#	$OpenBSD: Makefile,v 1.8 2010/03/23 10:19:48 pea Exp $

COMMENT = 	incremental backup

DISTNAME = 	rdiff-backup-1.2.8
CATEGORIES = 	sysutils

HOMEPAGE = 	http://www.nongnu.org/rdiff-backup/

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP =	Yes

LIB_DEPENDS += 		rsync::net/librsync

MASTER_SITES = 		${MASTER_SITE_SAVANNAH:=rdiff-backup/}

MODULES	= 		lang/python

NO_REGRESS = 		Yes

.include <bsd.port.mk>
