# New ports collection makefile for:	linuxdoc
# Version required:	1.1
# Date created:		July 8, 1997
# Whom:			jfieber
#
# $FreeBSD: Makefile,v 1.4 1998/01/17 17:25:46 jfieber Exp $
# $OpenBSD: Makefile,v 1.2 2000/02/10 23:14:36 espie Exp $
#

DISTNAME=	linuxdoc-1.1
CATEGORIES=	textproc
MASTER_SITES=	ftp://fallout.campusview.indiana.edu/pub/sgml/
NEED_VERSION=	1.191

MAINTAINER=	matthieu@laas.fr

RUN_DEPENDS=    ${ISOCAT}:${PORTSDIR}/textproc/iso8879

NO_MTREE=       yes
NO_BUILD=       yes
NO_CONFIGURE=	yes
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
