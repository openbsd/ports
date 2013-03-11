# $OpenBSD: Makefile,v 1.22 2013/03/11 11:23:57 espie Exp $

COMMENT=	move/copy/append/link multiple files with wildcards

DISTNAME=	mmv
PKGNAME=	mmv-1.01b
CATEGORIES=	misc

MASTER_SITES=	ftp://gatekeeper.dec.com/pub/usenet/comp.sources.unix/volume21/mmv/
DISTFILES=	part01.Z part02.Z

MASTER_SITES0=	ftp://gatekeeper.dec.com/pub/usenet/comp.sources.unix/volume22/
PATCHFILES=	mmv.pch.Z:0

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

DIST_SUBDIR=	${DISTNAME}
WRKDIST=	${WRKDIR}
EXTRACT_CASES=	*.Z) ${GZIP_CMD} -cd ${FULLDISTDIR}/$$archive | \
		sed '1,/^\#! \/bin\/sh/d' | sh ;;
PATCH_DIST_ARGS= -z ${DISTORIG} -d ${WRKSRC} --forward --quiet -E ${PATCH_DIST_STRIP} mmv.c
USE_GROFF =	Yes

post-extract:
	@cd ${WRKSRC} && cat mmv.c.? >mmv.c && rm mmv.c.?

NO_TEST=	Yes

.include <bsd.port.mk>
