# New ports collection makefile for:	linuxdoc
# Version required:	1.1
# Date created:		July 8, 1997
# Whom:			jfieber
#
# $FreeBSD: Makefile,v 1.4 1998/01/17 17:25:46 jfieber Exp $
# $OpenBSD: Makefile,v 1.9 2000/06/16 23:06:15 espie Exp $
#

DISTNAME=	linuxdoc-1.1
CATEGORIES=	textproc
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://fallout.campusview.indiana.edu/pub/sgml/

MAINTAINER=	matthieu@laas.fr

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=    ${ISOCAT}::textproc/iso8879

NO_BUILD=       Yes
WRKDIST=	${WRKDIR}

INSTDIR=	${PREFIX}/share/sgml/linuxdoc
ISOCAT=		${PREFIX}/share/sgml/iso8879/catalog

FILES=  	README catalog freebsd-1.0.dtd freebsd-1.1.dtd \
		linuxdoc.dec original.dtd

do-install:
	@[ -d ${INSTDIR} ] || mkdir -p ${INSTDIR}
	cd ${WRKSRC} ; ${INSTALL_DATA} ${FILES} ${INSTDIR}
	${INSTALL_DATA} ${FILESDIR}/xfree86.dtd ${INSTDIR}


.include <bsd.port.mk>
