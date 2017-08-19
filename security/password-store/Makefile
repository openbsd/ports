# $OpenBSD: Makefile,v 1.4 2017/08/19 13:52:07 ajacoutot Exp $

COMMENT =	simple password store

DISTNAME =	password-store-1.7
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	http://www.passwordstore.org/

MAINTAINER =	David Dahlberg <david+bsd@dahlberg.cologne>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://git.zx2c4.com/password-store/snapshot/
EXTRACT_SUFX =	.tar.xz

RUN_DEPENDS =	converters/base64 \
		devel/git \
		graphics/libqrencode \
		misc/gnugetopt \
		security/gnupg2 \
		shells/bash \
		sysutils/colortree \
		x11/xclip
TEST_DEPENDS =	${RUN_DEPENDS}

USE_GMAKE =	Yes
FAKE_FLAGS =	PREFIX=${PREFIX} MANDIR=${PREFIX}/man \
		WITH_BASHCOMP=yes WITH_ZSHCOMP=yes

NO_BUILD =	Yes

post-install:
		${INSTALL_DATA_DIR} \
			${PREFIX}/share/{examples,doc}/password-store
		${INSTALL_DATA} \
			${WRKDIST}/COPYING ${PREFIX}/share/doc/password-store/
		${INSTALL_DATA} ${WRKDIST}/README \
			${PREFIX}/share/doc/password-store/
		${INSTALL_DATA_DIR} \
			${PREFIX}/share/examples/password-store/completion \
			${PREFIX}/share/examples/password-store/dmenu \
			${PREFIX}/share/examples/password-store/emacs \
			${PREFIX}/share/examples/password-store/importers \
			${PREFIX}/share/examples/password-store/vim
		${INSTALL_DATA} ${WRKDIST}/contrib/pass.applescript \
			${PREFIX}/share/examples/password-store/
		${INSTALL_DATA} ${WRKDIST}/src/completion/* \
			${PREFIX}/share/examples/password-store/completion/
		${INSTALL_DATA} ${WRKDIST}/contrib/dmenu/* \
			${PREFIX}/share/examples/password-store/dmenu/
		${INSTALL_DATA} ${WRKDIST}/contrib/emacs/* \
			${PREFIX}/share/examples/password-store/emacs/
		${INSTALL_DATA} ${WRKDIST}/contrib/importers/* \
			${PREFIX}/share/examples/password-store/importers/
		${INSTALL_DATA} ${WRKDIST}/contrib/vim/* \
			${PREFIX}/share/examples/password-store/vim/

.include <bsd.port.mk>
