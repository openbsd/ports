# $OpenBSD: Makefile,v 1.2 2016/07/14 16:57:55 ajacoutot Exp $

COMMENT =	simple password store

DISTNAME =	password-store-1.6.5
CATEGORIES =	security
REVISION =	0

HOMEPAGE =	http://www.passwordstore.org/

MAINTAINER =	David Dahlberg <david+bsd@dahlberg.cologne>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://git.zx2c4.com/password-store/snapshot/
EXTRACT_SUFX =	.tar.xz

RUN_DEPENDS =	converters/base64 \
		misc/gnugetopt \
		security/gnupg \
		security/pwgen \
		shells/bash \
		sysutils/colortree \
		x11/xclip
TEST_DEPENDS =	${RUN_DEPENDS}

USE_GMAKE =	Yes
FAKE_FLAGS =	PREFIX=${PREFIX} MANDIR=${PREFIX}/man

NO_BUILD =	Yes

post-extract:
		@cp ${FILESDIR}/openbsd.sh ${WRKDIST}/src/platform

post-install:
		${INSTALL_DATA_DIR} \
			${PREFIX}/share/{examples,doc}/password-store
		${INSTALL_DATA} \
			${WRKDIST}/COPYING ${PREFIX}/share/doc/password-store/
		${INSTALL_DATA} ${WRKDIST}/README \
			${PREFIX}/share/doc/password-store/
		${INSTALL_DATA} ${WRKDIST}/contrib/*.txt \
			${PREFIX}/share/doc/password-store/
		${INSTALL_DATA_DIR} \
			${PREFIX}/share/examples/password-store/completion \
			${PREFIX}/share/examples/password-store/dmenu \
			${PREFIX}/share/examples/password-store/emacs \
			${PREFIX}/share/examples/password-store/importers \
			${PREFIX}/share/zsh/site-functions/
		${INSTALL_DATA} ${WRKDIST}/src/completion/* \
			${PREFIX}/share/examples/password-store/completion/
		${INSTALL_DATA} ${WRKDIST}/src/completion/pass.zsh-completion \
			${PREFIX}/share/zsh/site-functions/_pass
		${INSTALL_DATA} ${WRKDIST}/contrib/dmenu/* \
			${PREFIX}/share/examples/password-store/dmenu/
		${INSTALL_DATA} ${WRKDIST}/contrib/emacs/* \
			${PREFIX}/share/examples/password-store/emacs/
		${INSTALL_DATA} ${WRKDIST}/contrib/importers/* \
			${PREFIX}/share/examples/password-store/importers/

.include <bsd.port.mk>
