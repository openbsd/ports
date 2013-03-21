# $OpenBSD: Makefile,v 1.5 2013/03/21 08:45:13 ajacoutot Exp $

COMMENT =		web server performance testing tool

DISTNAME =		httperf-0.9.0
CATEGORIES =		benchmarks www

HOMEPAGE =		http://www.hpl.hp.com/research/linux/httperf/

MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://httperf.googlecode.com/files/

USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

WANTLIB +=		c crypto m ssl

.include <bsd.port.mk>
