# $OpenBSD: Makefile.inc,v 1.6 2013/03/11 10:50:03 espie Exp $

ONLY_FOR_ARCHS=	amd64 i386

CATEGORIES+=	devel/eclipse/plugins

EXTRACT_SUFX?=	.zip

NO_BUILD?=	Yes
NO_TEST?=	Yes

RUN_DEPENDS?=	devel/eclipse/sdk>=3.2

WRKDIST?=	${WRKDIR}
