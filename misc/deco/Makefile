# New ports collection makefile for:	deco
# Version required:			3.8
# Date created:				1 Oct 1998
# Whom:					Oleg Safiullin <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/10/01 12:04:24 form Exp $
# FreeBSD: Makefile,v 1.1.1.1 1998/03/27 11:56:44 tg Exp
#

DISTNAME=		deco38
PKGNAME=		deco-3.8
CATEGORIES=		misc
MASTER_SITES=		ftp://ftp.cronyx.ru/cronyx/deco/
EXTRACT_SUFX=		.tgz

MAINTAINER=		form@vs.itam.nsc.ru

WRKSRC=			${WRKDIR}/deco
GNU_CONFIGURE=		yes
CONFIGURE_ARGS=		--libdir=${PREFIX}/share
MAN1=			deco.1 deco-r.1

.include <bsd.port.mk>
