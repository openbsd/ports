# $OpenBSD: plone.port.mk,v 1.1 2008/03/20 11:42:34 winiger Exp $

MODULES+=		www/zope

MODPLONE_VERSION?=	2.5
MODZOPE_VERSION=	2.9

RUN_DEPENDS+=		::www/plone/${MODPLONE_VERSION}

NO_REGRESS=		Yes
