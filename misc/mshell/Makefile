# $OpenBSD: Makefile,v 1.4 1999/11/14 01:27:05 rohee Exp $
# Original from: Angelos D. Keromytis

DISTNAME=	mshell
PKGNAME=	mshell-1.0
CATEGORIES=	misc
MASTER_SITES=	ftp://src.doc.ic.ac.uk/usenet/alt.sources/articles/07000-07999/
DISTFILES=	7432.Z

MAINTAINER=	angelos@openbsd.org

NO_WRKSUBDIR=	yes

do-extract:
	@rm -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	zcat ${DISTDIR}/${DISTFILES} |(cd ${WRKDIR}; \
	awk '{if (/^#!/) x++} {if(x) print $$0'}| /bin/sh)

.include <bsd.port.mk>
