# OpenBSD makefile for:	dejagnu
# Version required:	1.3
# Date created:		May 20 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 08:06:52 angelos Exp $
#

DISTNAME=	dejagnu-1.3
CATEGORIES=	misc tk80
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	angelos@openbsd.org

RUN_DEPENDS=	expect:${PORTSDIR}/lang/expect

WRKSRC=		${WRKDIR}/${DISTNAME}/dejagnu
GNU_CONFIGURE=	yes

STRIP=
MAN1=		runtest.1

.include <bsd.port.mk>
