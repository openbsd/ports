# $OpenBSD: Makefile,v 1.10 2019/07/12 21:02:26 sthen Exp $

COMMENT =	rsync for cloud storage

V =		1.48.0
DISTNAME =	rclone-v${V}
PKGNAME =	rclone-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://rclone.org/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

MASTER_SITES =  https://github.com/ncw/rclone/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin

ALL_TARGET =	github.com/ncw/rclone

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/rclone ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/rclone.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/ \
		${PREFIX}/share/zsh/vendor-completions/
	${INSTALL_DATA} ${FILESDIR}/rclone.bash \
		${PREFIX}/share/bash-completion/completions/rclone
	${INSTALL_DATA} ${FILESDIR}/rclone.zsh \
		${PREFIX}/share/zsh/vendor-completions/_rclone

# maintainer target to generate completion files
completions:
.for s in bash zsh
	${LOCALBASE}/bin/rclone genautocomplete $s ${FILESDIR}/rclone.$s
.endfor

.include <bsd.port.mk>
