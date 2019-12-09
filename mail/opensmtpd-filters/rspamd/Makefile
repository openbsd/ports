# $OpenBSD: Makefile,v 1.5 2019/12/09 20:23:29 gilles Exp $

COMMENT =	rspamd integration to the OpenSMTPD daemon

V =		0.1.5
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

.include <bsd.port.mk>
