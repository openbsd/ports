# OpenBSD makefile for:	iso12083
# Version required:	1993
# Date created:		May 17 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.11 2001/05/06 04:11:44 lebel Exp $
#

COMMENT=	"SGML DTDs from The Electronic Publishing SIG"

DISTNAME=	iso12083-1993
CATEGORIES=	textproc
NEED_VERSION=	1.402
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
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@for i in ${DISTFILES}; do \
		${INSTALL_DATA} ${FULLDISTDIR}/$$i ${INSTDIR}/$$i; \
	done
	@${INSTALL_DATA} ${FILESDIR}/catalog ${INSTDIR}/catalog

.include <bsd.port.mk>
