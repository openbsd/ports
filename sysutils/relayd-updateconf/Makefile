# $OpenBSD: Makefile,v 1.2 2014/12/18 22:30:31 sthen Exp $

COMMENT=	update /etc/relayd.conf to new syntax

DISTNAME=	relayd-updateconf-5.6.1
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
