# OpenBSD makefile for:	iso12083
# Version required:	1993
# Date created:		May 17 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.9 2000/10/22 14:03:51 espie Exp $
#

DISTNAME=	iso12083-1993
CATEGORIES=	textproc
NEED_VERSION=	1.191
MASTER_SITES=	ftp://info.ex.ac.uk/pub/SGML/ISO-12083/
DISTFILES=	article.dtd book.dtd maths.dtd serial.dtd

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DIST_SUBDIR=	iso12083

NO_BUILD=	Yes
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
