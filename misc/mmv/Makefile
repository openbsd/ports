# OpenBSD makefile for:	mmv
# Version required:	1.01b
# Date created:		June 6 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.10 2000/10/22 15:42:49 espie Exp $
#

DISTNAME=	mmv
PKGNAME=	mmv-1.01b
CATEGORIES=	misc
NEED_VERSION=	1.191
MASTER_SITES=	ftp://gatekeeper.dec.com/pub/usenet/comp.sources.unix/volume21/mmv/
DISTFILES=	part01.Z part02.Z

MASTER_SITES0=	ftp://gatekeeper.dec.com/pub/usenet/comp.sources.unix/volume22/
PATCHFILES=	mmv.pch.Z:0

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

DIST_SUBDIR=	${DISTNAME}
WRKDIST=	${WRKDIR}
PATCH_DIST_ARGS= -d ${WRKSRC} --forward --quiet -E ${PATCH_DIST_STRIP} mmv.c

do-extract:
	@rm -rf ${WRKDIR}
	@mkdir -p ${WRKDIR}/tmp
	@for file in ${DISTFILES}; do \
		cp ${FULLDISTDIR}/$$file ${WRKDIR}/tmp; \
	 done ; \
	 uncompress ${WRKDIR}/tmp/*; \
	 cd ${WRKDIR}; \
	 for file in tmp/part0* ; do \
	     ${SH} ${SCRIPTDIR}/unshar $$file; \
	 done ; \
	 cat mmv.c.? >mmv.c ; rm mmv.c.? 

.include <bsd.port.mk>
