# OpenBSD makefile for:	html
# Version required:	4.0
# Date created:		December 1, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/02 02:46:46 angelos Exp $
#

DISTNAME=	html-4.0
CATEGORIES=	textproc
MASTER_SITES=	ftp://fallout.campusview.indiana.edu/pub/sgml/

MAINTAINER=	angelos@openbsd.org

NO_MTREE=       yes
EXTRACT_ONLY=	# empty
NO_BUILD=       yes
NO_PATCH=	yes
NO_CONFIGURE=	yes
NO_WRKSUBDIR=	yes

INSTDIR=	${PREFIX}/share/sgml/html

pre-install:
	@[ -d ${INSTDIR} ] || ${MKDIR} ${INSTDIR}

do-install:
	@zcat ${DISTDIR}/${DISTFILES} |(cd ${INSTDIR}; pax -r)
	@chmod ${SHAREMODE} `find ${INSTDIR} -type f`
	@chown -R ${SHAREOWN}.${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
