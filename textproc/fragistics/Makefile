# $OpenBSD: Makefile,v 1.4 2017/07/23 09:26:29 espie Exp $

COMMENT =	Quake 3 statistics program

DISTNAME =	fragistics-1.7.0
REVISION =	0

CATEGORIES =	textproc games

HOMEPAGE =	http://fragistics.sourceforge.net/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# License GPL + Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fragistics/}

RUN_DEPENDS =		devel/p5-Shell

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

pre-configure:
	rm ${WRKSRC}/src/rawfragistics*

.include <bsd.port.mk>
