# $OpenBSD: Makefile,v 1.2 2011/03/03 18:41:14 rpointel Exp $

COMMENT =		system downtime monitoring
DISTNAME =		downtimed-0.5
CATEGORIES =		sysutils

HOMEPAGE =		http://dist.epipe.com/downtimed/
MASTER_SITES =		${HOMEPAGE}

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_GROFF =		Yes

CONFIGURE_STYLE =	gnu

WANTLIB += c

.include <bsd.port.mk>
