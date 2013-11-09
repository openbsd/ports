# $OpenBSD: Makefile,v 1.9 2013/11/09 23:19:03 naddy Exp $

COMMENT =		data recovery tool

DISTNAME =		ddrescue-1.16
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://www.gnu.org/software/ddrescue/ddrescue.html

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		${MASTER_SITE_GNU:=ddrescue/}

BUILD_DEPENDS = 	devel/help2man

CONFIGURE_STYLE =	gnu
ALL_TARGET =		all doc
INSTALL_TARGET =	install install-man

.include <bsd.port.mk>
