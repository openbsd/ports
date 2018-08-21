# $OpenBSD: Makefile,v 1.1.1.1 2018/08/21 02:04:04 bcallah Exp $

COMMENT =	GNU version of the arbitrary precision calculators bc and dc
DISTNAME =	bc-1.07.1
PKGNAME =	g${DISTNAME}
CATEGORIES =	math

HOMEPAGE =	https://www.gnu.org/software/bc/
MAINTAINER =	Ivan Ivanov <rambiusparkisanius@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses edit

MASTER_SITES =	${MASTER_SITE_GNU:=bc/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--program-prefix=g \
			--with-libedit

.include <bsd.port.mk>
