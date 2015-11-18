# $OpenBSD: Makefile,v 1.3 2015/11/18 14:02:57 sthen Exp $

COMMENT=	update /etc/relayd.conf to new syntax

DISTNAME=	relayd-updateconf-5.7
CATEGORIES=	sysutils

MASTER_SITES=	http://bsd.plumbing/download/

MAINTAINER=	Sebastian Benoit <benno@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c util

MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/bin" \
		MANDIR="${TRUEPREFIX}/man/man"

NO_TEST=	Yes

.include <bsd.port.mk>
