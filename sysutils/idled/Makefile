# OpenBSD makefile for:	idled
# Version required:	1.16
# Date created:	06 Nov 1997
# Whom:	ejovi
#
# $OpenBSD: Makefile,v 1.4 1998/07/25 00:44:47 marc Exp $
#

DISTNAME=	idled-1.16
CATEGORIES=	sysutils

MAINTAINER=	marc@openbsd.org

NO_CDROM=	"NOFEE:	Can not sell"

MASTER_SITES=	ftp://ftp.cs.hope.edu/pub/idled/

post-extract:
	@(cd ${WRKSRC}; make clean)

.include <bsd.port.mk>
