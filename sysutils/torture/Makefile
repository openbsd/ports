# $OpenBSD: Makefile,v 1.5 2012/10/15 15:06:42 sthen Exp $

COMMENT =		set of kernel torture tools

DISTNAME =		torture-1.0
EXTRACT_SUFX =		.tgz
CATEGORIES =		sysutils

MAINTAINER =		Thordur I. Bjornsson <thib@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MASTER_SITES =	http://notendur.hi.is/~thb45/

NO_REGRESS =	Yes
WANTLIB =	c

MAKE_FLAGS =	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/man"

.include <bsd.port.mk>
