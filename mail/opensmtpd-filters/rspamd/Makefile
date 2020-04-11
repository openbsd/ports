# $OpenBSD: Makefile,v 1.6 2020/04/11 16:01:46 eric Exp $

COMMENT =	rspamd integration to the OpenSMTPD daemon

V =		0.1.6
FILTER_NAME =	rspamd
DISTNAME =	filter-rspamd-${V}

CATEGORIES =	mail
HOMEPAGE =	https://github.com/poolpOrg/filter-rspamd/

MAINTAINER =	Gilles Chehade <gilles@poolp.org>

MASTER_SITES =	https://github.com/poolpOrg/filter-rspamd/releases/download/${V}/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread
MODULES =	lang/go
NO_TEST =	Yes

ALL_TARGET =	filter-rspamd

BUILD_DEPENDS = devel/go-sys

.include <bsd.port.mk>
