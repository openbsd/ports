# $OpenBSD: Makefile,v 1.1.1.1 2018/07/08 11:25:23 jasper Exp $

COMMENT =	rsync for cloud storage
V =		1.42
DISTNAME =	rclone-v${V}
PKGNAME =	rclone-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://rclone.org/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c pthread

MASTER_SITES =  https://github.com/ncw/rclone/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin

ALL_TARGET =	github.com/ncw/rclone

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/rclone ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/rclone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
