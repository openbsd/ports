# OpenBSD makefile for: mshell
# Version required:     93/3/3
# Date created:         May 20 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 08:01:31 angelos Exp $
#

DISTNAME=	mshell
PKGNAME=	mshell-1.0
CATEGORIES=	misc
MASTER_SITES=	ftp://src.doc.ic.ac.uk/usenet/alt.sources/articles/07000-07999/
DISTFILES=	7432.Z

MAINTAINER=	angelos@openbsd.org

NO_WRKSUBDIR=	yes
MAN1=		mshell.1

do-extract:
	@rm -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	zcat ${DISTDIR}/${DISTFILES} |(cd ${WRKDIR}; \
	awk '{if (/^#!/) x++} {if(x) print $$0'}| /bin/sh)

.include <bsd.port.mk>
