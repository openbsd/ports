# $OpenBSD: Makefile,v 1.15 2002/12/23 00:37:51 pvalchev Exp $

COMMENT=	"Unix menuing shell"

DISTNAME=	mshell
PKGNAME=	mshell-1.0
CATEGORIES=	misc

MASTER_SITES=	ftp://src.doc.ic.ac.uk/usenet/alt.sources/articles/07000-07999/
DISTFILES=	7432.Z
WRKDIST=	${WRKDIR}
EXTRACT_ONLY=	

PERMIT_PACKAGE_CDROM=	"no explict license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no explict license"
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	zcat ${DISTDIR}/${DISTFILES} |(cd ${WRKDIR}; \
	awk '{if (/^#!/) x++} {if(x) print $$0'}| /bin/sh)

NO_REGRESS=	Yes

.include <bsd.port.mk>
