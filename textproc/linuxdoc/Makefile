# New ports collection makefile for:	linuxdoc
# Version required:	1.1
# Date created:		July 8, 1997
# Whom:			jfieber
#
# $FreeBSD: Makefile,v 1.4 1998/01/17 17:25:46 jfieber Exp $
# $OpenBSD: Makefile,v 1.1.1.1 1998/04/05 08:58:09 matthieu Exp $
#

DISTNAME=	linuxdoc-1.1
CATEGORIES=	textproc
MASTER_SITES=	ftp://fallout.campusview.indiana.edu/pub/sgml/

MAINTAINER=	matthieu@laas.fr

RUN_DEPENDS=    ${ISOCAT}:${PORTSDIR}/textproc/iso8879

NO_MTREE=       yes
NO_BUILD=       yes
NO_CONFIGURE=	yes
NO_WRKSUBDIR=	yes

INSTDIR=	${PREFIX}/share/sgml/linuxdoc
ISOCAT=		${PREFIX}/share/sgml/iso8879/catalog

FILES=  	README catalog freebsd-1.0.dtd freebsd-1.1.dtd \
		linuxdoc.dec original.dtd

do-install:
	@[ -d ${INSTDIR} ] || ${MKDIR} ${INSTDIR}
	cd ${WRKSRC} ; ${INSTALL_DATA} ${FILES} ${INSTDIR}
	${INSTALL_DATA} ${FILESDIR}/xfree86.dtd ${INSTDIR}


.include <bsd.port.mk>
