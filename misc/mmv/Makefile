# OpenBSD makefile for:	mmv
# Version required:	1.01b
# Date created:		June 6 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 2000/03/22 19:58:12 turan Exp $
#

NEED_VERSION=	1.191
DISTNAME=	mmv
PKGNAME=	mmv-1.01b
CATEGORIES=	misc
MASTER_SITES=	ftp://gatekeeper.dec.com/pub/usenet/comp.sources.unix/volume21/mmv/
DISTFILES=	part01.Z part02.Z

MASTER_SITES0=	ftp://gatekeeper.dec.com/pub/usenet/comp.sources.unix/volume22/
PATCHFILES=	mmv.pch.Z:0

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

DIST_SUBDIR=	${DISTNAME}
WRKDIST=	${WRKDIR}
PATCH_DIST_ARGS= -d ${WRKSRC} --forward --quiet -E ${PATCH_DIST_STRIP} mmv.c
MAN1=		mmv.1

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

do-install:
	cd ${PREFIX}/bin ; rm -f mmv mad mcp mln ; \
	 ${INSTALL_PROGRAM} ${WRKSRC}/mmv ${PREFIX}/bin ; \
	 ln -fs ${PREFIX}/bin/mmv ${PREFIX}/bin/mad ; \
	 ln -fs ${PREFIX}/bin/mmv ${PREFIX}/bin/mcp ; \
	 ln -fs ${PREFIX}/bin/mmv ${PREFIX}/bin/mln ; \
	 ${INSTALL_MAN} ${WRKSRC}/mmv.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
