# OpenBSD makefile for:	html
# Version required:	4.0
# Date created:		December 1, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.7 2000/03/24 22:12:01 espie Exp $
#

DISTNAME=	html-4.0b
CATEGORIES=	textproc
NEED_VERSION=	1.191
MASTER_SITES=	ftp://fallout.campusview.indiana.edu/pub/sgml/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

NO_MTREE=       yes
EXTRACT_ONLY=	# empty
NO_BUILD=       yes
NO_PATCH=	yes
NO_CONFIGURE=	yes
WRKDIST=	${WRKDIR}

INSTDIR=	${PREFIX}/share/sgml/html

pre-install:
	@[ -d ${INSTDIR} ] || mkdir -p ${INSTDIR}

do-install:
	@zcat ${DISTDIR}/${DISTFILES} |(cd ${INSTDIR}; pax -r)
	@chmod ${SHAREMODE} `find ${INSTDIR} -type f`
	@/usr/sbin/chown -R ${SHAREOWN}.${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
