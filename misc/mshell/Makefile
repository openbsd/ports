# $OpenBSD: Makefile,v 1.16 2002/12/23 07:42:00 pvalchev Exp $

COMMENT=	"Unix menuing shell"

DISTNAME=	mshell
PKGNAME=	mshell-1.0
CATEGORIES=	misc

MASTER_SITES=	ftp://src.doc.ic.ac.uk/usenet/alt.sources/articles/07000-07999/
DISTFILES=	7432.Z
WRKDIST=	${WRKDIR}
EXTRACT_ONLY=	

PERMIT_PACKAGE_CDROM=	"no explict license"
PERMIT_PACKAGE_FTP=	"no explict license"
PERMIT_DISTFILES_CDROM=	"no explict license"
PERMIT_DISTFILES_FTP=	"no explict license"

post-extract:
	zcat ${DISTDIR}/${DISTFILES} |(cd ${WRKDIR}; \
	awk '{if (/^#!/) x++} {if(x) print $$0'}| /bin/sh)

NO_REGRESS=	Yes

.include <bsd.port.mk>
