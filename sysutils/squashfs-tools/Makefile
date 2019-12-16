# $OpenBSD: Makefile,v 1.1.1.1 2019/12/16 15:35:26 jasper Exp $

COMMENT =		tools to create and extract Squashfs filesystems

GH_TAGNAME =		4.4
GH_PROJECT =		squashfs-tools
GH_ACCOUNT =		plougher

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		sysutils

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/squashfs-tools

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/{mk,un}squashfs ${PREFIX}/bin

.include <bsd.port.mk>
