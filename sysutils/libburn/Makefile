# $OpenBSD: Makefile,v 1.3 2020/10/11 17:56:15 landry Exp $

COMMENT =	library for reading, mastering and writing optical discs

DISTNAME =	libburn-1.4.8
SHARED_LIBS +=  burn 0.0 # 105.0

CATEGORIES =	sysutils

HOMEPAGE =	https://dev.lovelyhq.com/libburnia/web/wikis/Libburn
MASTER_SITES =	http://files.libburnia-project.org/releases/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
