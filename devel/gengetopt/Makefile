# $OpenBSD: Makefile,v 1.3 2017/04/10 11:45:25 sthen Exp $

V =		2.22.6
COMMENT =	command line parser for c programs
DISTNAME =	gengetopt-${V}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	http://www.gnu.org/software/gengetopt/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${LIBCXX}

MASTER_SITES =	${MASTER_SITE_GNU:=gengetopt/}

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
