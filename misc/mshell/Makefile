# $OpenBSD: Makefile,v 1.5 2000/02/10 23:14:33 espie Exp $
# Original from: Angelos D. Keromytis

DISTNAME=	mshell
PKGNAME=	mshell-1.0
CATEGORIES=	misc
MASTER_SITES=	ftp://src.doc.ic.ac.uk/usenet/alt.sources/articles/07000-07999/
DISTFILES=	7432.Z
NEED_VERSION=	1.191
WRKDIST=	${WRKDIR}
EXTRACT_ONLY=	

MAINTAINER=	angelos@openbsd.org

post-extract:
	zcat ${DISTDIR}/${DISTFILES} |(cd ${WRKDIR}; \
	awk '{if (/^#!/) x++} {if(x) print $$0'}| /bin/sh)

.include <bsd.port.mk>
