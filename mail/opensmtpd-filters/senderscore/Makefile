# $OpenBSD: Makefile,v 1.2 2019/12/09 20:24:02 gilles Exp $

COMMENT =	SenderScore integration to the OpenSMTPD daemon

V =		0.1.1
FILTER_NAME =	senderscore
DISTNAME =	filter-senderscore-${V}

CATEGORIES =	mail
HOMEPAGE =	https://github.com/poolpOrg/filter-senderscore/

MAINTAINER =	Gilles Chehade <gilles@poolp.org>

MASTER_SITES =	https://github.com/poolpOrg/filter-senderscore/releases/download/${V}/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread
MODULES =	lang/go
NO_TEST =	Yes

ALL_TARGET =	filter-senderscore

.include <bsd.port.mk>
