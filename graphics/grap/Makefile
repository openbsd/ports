# $OpenBSD: Makefile,v 1.3 2011/03/14 09:17:00 sthen Exp $

COMMENT =	language for typesetting graphs

DISTNAME =	grap-1.43
REVISION =	0
CATEGORIES =	textproc graphics

HOMEPAGE =	http://lunabase.org/~faber/Vault/software/grap/

MAINTAINER =	Hermann Gottschalk <magnum@pestilenz.org>

# BSD
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${HOMEPAGE}
WANTLIB =		c m stdc++
CONFIGURE_STYLE =	gnu
USE_GROFF =	Yes

.include <bsd.port.mk>
