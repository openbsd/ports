# OpenBSD makefile for:	idled
# Version required:	1.16
# Date created:	06 Nov 1997
# Whom:	ejovi
#
# $OpenBSD: Makefile,v 1.2 1997/11/17 21:47:41 joey Exp $
#

DISTNAME=	idled-1.16
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.cs.hope.edu/pub/idled/

MAINTAINER=     joey@openbsd.org
NO_CDROM=	non-profit use and distribution only
MANCOMPRESSED=	yes
MAN5=		idled.cf.5
MAN8=		idled.8

post-extract:
	(cd ${WRKSRC}; make clean)

post-install:
	strip ${PREFIX}/libexec/idled

.include <bsd.port.mk>
