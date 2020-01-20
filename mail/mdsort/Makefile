# $OpenBSD: Makefile,v 1.11 2020/01/20 21:00:38 anton Exp $

COMMENT =	maildir sort

V =		5.1.0
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
