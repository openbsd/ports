# New ports collection makefile for:	sgmlformat
# Version required:	1.6
# Date created:		July 16, 1997
# Whom:			jfieber
#
# $FreeBSD: Makefile,v 1.9 1998/02/21 21:59:37 jfieber Exp $
# $OpenBSD: Makefile,v 1.6 2000/04/09 17:38:32 espie Exp $
#

DISTNAME=	sgmlformat-1.6
CATEGORIES=	textproc print
NEED_VERSION=	 1.230
FAKE=No
MASTER_SITES=	ftp://fallout.campusview.indiana.edu/pub/sgml/

MAINTAINER=	matthieu@laas.fr

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	nsgmls::textproc/jade
RUN_DEPENDS+=	${PREFIX}/share/sgml/linuxdoc::textproc/linuxdoc 

.include <bsd.port.mk>
