# $OpenBSD: Makefile,v 1.27 2017/05/06 16:45:34 juanfra Exp $

COMMENT =		series of applications for Mercurial

# Change also the mercurial version in run_depends
MODPY_EGG_VERSION =	4.2
DISTNAME =		tortoisehg-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME}pre20170506

CATEGORIES =		devel

HOMEPAGE =		https://tortoisehg.bitbucket.io/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

#MASTER_SITES =		https://bitbucket.org/tortoisehg/targz/downloads/
MASTER_SITES =		http://download.tuxfamily.org/jod/devel/tortoisehg/ \
			ftp://download.tuxfamily.org/jod/devel/tortoisehg/

MODULES =		lang/python
BUILD_DEPENDS =		x11/py-qt4 \
			editors/qscintilla \
			devel/py-sip

RUN_DEPENDS =		x11/py-qt4 \
			editors/qscintilla \
			devel/py-sip \
			editors/py-qscintilla \
			devel/mercurial>=4.2,<4.3 \
			devel/py-iniparse

NO_TEST =		Yes

SHAREDIR =		${PREFIX}/share/tortoisehg

post-extract:
	@${SUBST_DATA} -c ${FILESDIR}/config.py \
		${WRKSRC}/tortoisehg/util/config.py

post-install:
	${INSTALL_DATA_DIR} ${SHAREDIR}
	${INSTALL_DATA} ${WRKSRC}/COPYING.txt ${SHAREDIR}

.include <bsd.port.mk>
