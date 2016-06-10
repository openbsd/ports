# $OpenBSD: Makefile,v 1.1.1.1 2016/06/10 12:58:21 awolk Exp $

COMMENT =	Quake 3 statistics program

DISTNAME =	fragistics-1.7.0

CATEGORIES =	textproc games

HOMEPAGE =	http://fragistics.sourceforge.net/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# License GPL + Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fragistics/}

RUN_DEPENDS =		devel/p5-Shell

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

pre-configure:
	rm ${WRKSRC}/src/rawfragistics*

.include <bsd.port.mk>
