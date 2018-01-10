# $OpenBSD: Makefile,v 1.1.1.1 2018/01/10 16:24:35 claudio Exp $

COMMENT =		prometheus utility tool

GH_ACCOUNT =		prometheus
GH_PROJECT =		promu
GH_TAGNAME =		v0.1.0

CATEGORIES =		devel

HOMEPAGE =		http://prometheus.io/

MAINTAINER =		Claudio Jeker <claudio@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MODULES =		lang/go
MODGO_TYPE =		bin

.include <bsd.port.mk>
