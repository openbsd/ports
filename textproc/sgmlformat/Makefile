# New ports collection makefile for:	sgmlformat
# Version required:	1.6
# Date created:		July 16, 1997
# Whom:			jfieber
#
# $FreeBSD: Makefile,v 1.9 1998/02/21 21:59:37 jfieber Exp $
# $OpenBSD: Makefile,v 1.2 2000/02/12 06:30:05 turan Exp $
#

DISTNAME=	sgmlformat-1.6
CATEGORIES=	textproc print
MASTER_SITES=	ftp://fallout.campusview.indiana.edu/pub/sgml/

MAINTAINER=	matthieu@laas.fr

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

RUN_DEPENDS=	nsgmls:${PORTSDIR}/textproc/jade
RUN_DEPENDS+=	${PREFIX}/share/sgml/linuxdoc:${PORTSDIR}/textproc/linuxdoc 

.include <bsd.port.mk>
