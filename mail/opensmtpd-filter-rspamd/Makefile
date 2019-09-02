# $OpenBSD: Makefile,v 1.2 2019/09/02 19:01:24 gilles Exp $

COMMENT =	rspamd integration to the OpenSMTPD daemon

V =		0.1.1
DISTNAME =	filter-rspamd-${V}

CATEGORIES =	mail
HOMEPAGE =	https://github.com/poolpOrg/filter-rspamd/

MAINTAINER =	Gilles Chehade <gilles@poolp.org>

MASTER_SITES =	https://github.com/poolpOrg/filter-rspamd/releases/download/${V}/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread
MODULES =	lang/go
MODGO_TYPE =	bin
NO_TEST =	Yes

ALL_TARGET =	filter-rspamd

.include <bsd.port.mk>
