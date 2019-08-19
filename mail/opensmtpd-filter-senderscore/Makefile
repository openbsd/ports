# $OpenBSD: Makefile,v 1.1.1.1 2019/08/19 21:21:17 gilles Exp $

COMMENT =	SenderScore integration to the OpenSMTPD daemon

V =		0.1.0
DISTNAME =	filter-senderscore-${V}

CATEGORIES =	mail
HOMEPAGE =	https://github.com/poolpOrg/filter-senderscore/

MAINTAINER =	Gilles Chehade <gilles@poolp.org>

MASTER_SITES =	https://github.com/poolpOrg/filter-senderscore/releases/download/${V}/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread
MODULES =	lang/go
MODGO_TYPE =	bin
NO_TEST =	Yes

ALL_TARGET =	filter-senderscore

.include <bsd.port.mk>
