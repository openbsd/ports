# OpenBSD makefile for:	html
# Version required:	4.0
# Date created:		December 1, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.14 2001/06/20 01:43:35 pvalchev Exp $
#

COMMENT=	"all W3C published SGML DTDs for HTML"

DISTNAME=	html-4.0b
CATEGORIES=	textproc
NEED_VERSION=	1.402
MASTER_SITES=	ftp://fallout.campusview.indiana.edu/pub/sgml/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_ONLY=	# empty
NO_BUILD=       Yes
WRKDIST=	${WRKDIR}

INSTDIR=	${PREFIX}/share/sgml/html

pre-install:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@zcat ${FULLDISTDIR}/${DISTFILES} |(cd ${INSTDIR}; pax -r)
	@chmod ${SHAREMODE} `find ${INSTDIR} -type f`
	@/usr/sbin/chown -R ${SHAREOWN}.${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
