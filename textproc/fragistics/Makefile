# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:58 sthen Exp $

COMMENT =	Quake 3 statistics program

DISTNAME =	fragistics-1.7.0
REVISION =	2

CATEGORIES =	textproc games

HOMEPAGE =	http://fragistics.sourceforge.net/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# License GPL + Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fragistics/}

RUN_DEPENDS =		devel/p5-Shell

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

pre-configure:
	rm ${WRKSRC}/src/rawfragistics*

.include <bsd.port.mk>
