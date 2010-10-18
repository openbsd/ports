# $OpenBSD: Makefile,v 1.2 2010/10/18 16:57:46 espie Exp $

COMMENT =		web server performance testing tool

DISTNAME =		httperf-0.9.0
CATEGORIES =		benchmarks www

HOMEPAGE =		http://www.hpl.hp.com/research/linux/httperf/

MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://httperf.googlecode.com/files/

USE_LIBTOOL =		Yes
USE_GROFF =	Yes
CONFIGURE_STYLE =	gnu

WANTLIB +=		c crypto m ssl

.include <bsd.port.mk>
