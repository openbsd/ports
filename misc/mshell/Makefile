# $OpenBSD: Makefile,v 1.7 2000/03/24 22:11:50 espie Exp $
# Original from: Angelos D. Keromytis

DISTNAME=	mshell
PKGNAME=	mshell-1.0
CATEGORIES=	misc
NEED_VERSION=	1.191
MASTER_SITES=	ftp://src.doc.ic.ac.uk/usenet/alt.sources/articles/07000-07999/
DISTFILES=	7432.Z
WRKDIST=	${WRKDIR}
EXTRACT_ONLY=	

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no explict license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no explict license"
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	zcat ${DISTDIR}/${DISTFILES} |(cd ${WRKDIR}; \
	awk '{if (/^#!/) x++} {if(x) print $$0'}| /bin/sh)

.include <bsd.port.mk>
