# OpenBSD makefile for:	mh
# Version required:	6.8.4
# Date created:		April 8, 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.13 2003/07/16 19:24:25 naddy Exp $
#

COMMENT=	"Rand MH mail handling system"

DISTNAME=	mh-6.8.3
PKGNAME=	mh-6.8.4
CATEGORIES=	mail
FAKE=No
MASTER_SITES=	ftp://ftp.ics.uci.edu/pub/mh/tar/
EXTRACT_SUFX=	.tar.Z

MASTER_SITES0= 	ftp://ftp.ics.uci.edu/pub/mh/updates/
PATCHFILES=	MH.6.8.4.Z:0

BROKEN=		"Buffer overflow in MIME support, use nmh >= 1.03 instead."

# License: PD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
