# OpenBSD makefile for:	iso12083
# Version required:	1993
# Date created:		May 17 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 2000/02/10 23:14:36 espie Exp $
#

NEED_VERSION=	1.116
DISTNAME=	iso12083-1993
CATEGORIES=	textproc
MASTER_SITES=	ftp://info.ex.ac.uk/pub/SGML/ISO-12083/
DISTFILES=	article.dtd book.dtd maths.dtd serial.dtd
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

DIST_SUBDIR=	iso12083

NO_MTREE=	yes
NO_BUILD=	yes
NO_PATCH=	yes
NO_CONFIGURE=	yes
WRKDIST=	${WRKDIR}
EXTRACT_ONLY=	# empty

INSTDIR=	${PREFIX}/share/sgml/iso12083

pre-install:
	@[ -d ${INSTDIR} ] || mkdir -p ${INSTDIR}

do-install:
	@for i in ${DISTFILES}; do \
		${INSTALL_DATA} ${FULLDISTDIR}/$$i ${INSTDIR}/$$i; \
	done
	@${INSTALL_DATA} ${FILESDIR}/catalog ${INSTDIR}/catalog

.include <bsd.port.mk>
