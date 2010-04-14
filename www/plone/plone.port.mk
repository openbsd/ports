# $OpenBSD: plone.port.mk,v 1.2 2010/04/14 00:05:41 fgsch Exp $

MODULES+=		www/zope

MODPLONE_VERSION?=	3.0
MODZOPE_VERSION=	2.10

RUN_DEPENDS+=		::www/plone/${MODPLONE_VERSION}

NO_REGRESS=		Yes
