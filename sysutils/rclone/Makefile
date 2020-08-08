# $OpenBSD: Makefile,v 1.17 2020/08/08 16:41:13 bket Exp $

COMMENT =	rsync for cloud storage

V =		1.52.3
DISTNAME =	rclone-v${V}
PKGNAME =	rclone-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://rclone.org/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

MASTER_SITES =  https://downloads.rclone.org/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin

ALL_TARGET =	github.com/rclone/rclone

post-build:
.for s in bash zsh
	cd ${MODGO_WORKSPACE}/bin && ./rclone genautocomplete $s rclone.$s
.endfor

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/rclone ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/rclone.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/ \
		${PREFIX}/share/zsh/vendor-completions/
	${INSTALL_DATA} ${MODGO_WORKSPACE}/bin/rclone.bash \
		${PREFIX}/share/bash-completion/completions/rclone
	${INSTALL_DATA} ${MODGO_WORKSPACE}/bin/rclone.zsh \
		${PREFIX}/share/zsh/vendor-completions/_rclone

.include <bsd.port.mk>
