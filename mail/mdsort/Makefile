# $OpenBSD: Makefile,v 1.14 2020/06/17 18:20:22 anton Exp $

COMMENT =	maildir sort

V =		5.2.3
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
