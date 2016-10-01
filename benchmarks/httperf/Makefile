# $OpenBSD: Makefile,v 1.10 2016/10/01 11:54:14 naddy Exp $

COMMENT =		web server performance testing tool

DISTNAME =		httperf-0.9.0
REVISION =		1
CATEGORIES =		benchmarks www

HOMEPAGE =		http://www.hpl.hp.com/research/linux/httperf/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=httperf/}

CONFIGURE_STYLE =	gnu

WANTLIB +=		c crypto m ssl

.include <bsd.port.mk>
