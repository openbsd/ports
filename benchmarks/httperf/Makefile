# $OpenBSD: Makefile,v 1.4 2013/03/10 23:04:44 espie Exp $

COMMENT =		web server performance testing tool

DISTNAME =		httperf-0.9.0
CATEGORIES =		benchmarks www

HOMEPAGE =		http://www.hpl.hp.com/research/linux/httperf/

MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://httperf.googlecode.com/files/

USE_LIBTOOL =		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

WANTLIB +=		c crypto m ssl

.include <bsd.port.mk>
