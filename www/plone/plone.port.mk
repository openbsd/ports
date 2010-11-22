# $OpenBSD: plone.port.mk,v 1.3 2010/11/22 08:36:53 espie Exp $

MODULES+=		www/zope

MODPLONE_VERSION?=	3.0
MODZOPE_VERSION=	2.10

RUN_DEPENDS+=		www/plone/${MODPLONE_VERSION}

NO_REGRESS=		Yes
