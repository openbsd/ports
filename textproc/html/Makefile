# OpenBSD makefile for:	html
# Version required:	4.0
# Date created:		December 1, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.9 2000/04/21 23:24:53 espie Exp $
#

DISTNAME=	html-4.0b
CATEGORIES=	textproc
NEED_VERSION=	1.191
MASTER_SITES=	ftp://fallout.campusview.indiana.edu/pub/sgml/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_ONLY=	# empty
NO_BUILD=       Yes
NO_PATCH=	Yes
NO_CONFIGURE=	Yes
WRKDIST=	${WRKDIR}
FAKE=		Yes

INSTDIR=	${PREFIX}/share/sgml/html

pre-install:
	@[ -d ${INSTDIR} ] || mkdir -p ${INSTDIR}

do-install:
	@zcat ${FULLDISTDIR}/${DISTFILES} |(cd ${INSTDIR}; pax -r)
	@chmod ${SHAREMODE} `find ${INSTDIR} -type f`
	@/usr/sbin/chown -R ${SHAREOWN}.${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
