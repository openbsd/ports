# $OpenBSD: Makefile,v 1.7 2015/01/24 12:20:38 schwarze Exp $

COMMENT =		web server performance testing tool

DISTNAME =		httperf-0.9.0
CATEGORIES =		benchmarks www

HOMEPAGE =		http://www.hpl.hp.com/research/linux/httperf/

MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://httperf.googlecode.com/files/

CONFIGURE_STYLE =	gnu

WANTLIB +=		c crypto m ssl

.include <bsd.port.mk>
