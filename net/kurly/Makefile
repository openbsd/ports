# $OpenBSD: Makefile,v 1.2 2019/07/12 20:48:29 sthen Exp $

ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =		alternative curl written in go

DISTNAME =		kurly-1.2.2

CATEGORIES =		net

HOMEPAGE =		https://gitlab.com/davidjpeacock/kurly

# Apache 2
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MASTER_SITES =		https://download.tuxfamily.org/jod/net/kurly/ \
			ftp://download.tuxfamily.org/jod/net/kurly/

MODULES =		lang/go

ALL_TARGET =		gitlab.com/davidjpeacock/kurly

.include <bsd.port.mk>
