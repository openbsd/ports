# $OpenBSD: Makefile,v 1.9 2015/07/18 17:13:49 jca Exp $

COMMENT =		web server performance testing tool

DISTNAME =		httperf-0.9.0
REVISION =		1
CATEGORIES =		benchmarks www

HOMEPAGE =		http://www.hpl.hp.com/research/linux/httperf/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://httperf.googlecode.com/files/

CONFIGURE_STYLE =	gnu

WANTLIB +=		c crypto m ssl

.include <bsd.port.mk>
