# $OpenBSD: Makefile.inc,v 1.7 2013/05/14 07:14:20 jasper Exp $

ONLY_FOR_ARCHS=	amd64 i386

CATEGORIES=	devel

EXTRACT_SUFX?=	.zip

NO_BUILD?=	Yes
NO_TEST?=	Yes

RUN_DEPENDS?=	devel/eclipse/sdk>=3.2

WRKDIST?=	${WRKDIR}
