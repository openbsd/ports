# $OpenBSD: Makefile,v 1.3 2010/11/19 22:31:38 espie Exp $

COMMENT =	bindings for RRD functions

DISTNAME =	errand-0.7.2
REVISION =	0
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

RUN_DEPENDS =		net/rrdtool,-ruby

.include <bsd.port.mk>
