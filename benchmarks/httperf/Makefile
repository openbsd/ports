# $OpenBSD: Makefile,v 1.11 2019/07/12 20:43:43 sthen Exp $

COMMENT =		web server performance testing tool

DISTNAME =		httperf-0.9.0
REVISION =		1
CATEGORIES =		benchmarks www

HOMEPAGE =		http://www.hpl.hp.com/research/linux/httperf/

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=httperf/}

CONFIGURE_STYLE =	gnu

WANTLIB +=		c crypto m ssl

.include <bsd.port.mk>
