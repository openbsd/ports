# $OpenBSD: Makefile,v 1.3 2019/07/21 04:12:10 bcallah Exp $

BROKEN-sparc64 =	Bus error during build

COMMENT =	GNU version of the arbitrary precision calculators bc and dc
DISTNAME =	bc-1.07.1
PKGNAME =	g${DISTNAME}
CATEGORIES =	math

HOMEPAGE =	https://www.gnu.org/software/bc/
MAINTAINER =	Ivan Ivanov <rambiusparkisanius@gmail.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses edit

MASTER_SITES =	${MASTER_SITE_GNU:=bc/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--program-prefix=g \
			--with-libedit

.include <bsd.port.mk>
