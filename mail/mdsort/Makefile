# $OpenBSD: Makefile,v 1.16 2020/09/12 08:58:27 anton Exp $

COMMENT =	maildir sort

V =		6.0.0
DISTNAME =	mdsort-${V}

CATEGORIES =	mail

HOMEPAGE =	https://github.com/mptre/mdsort

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c

MASTER_SITES =	https://github.com/mptre/mdsort/releases/download/v${V}/

CONFIGURE_STYLE =	simple

.include <bsd.port.mk>
