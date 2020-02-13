# $OpenBSD: Makefile,v 1.42 2020/02/13 22:04:38 juanfra Exp $

COMMENT =		series of applications for Mercurial

# Change also the mercurial version in *_depends
MODPY_EGG_VERSION =	5.0.2
REVISION =		2
DISTNAME =		tortoisehg-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://tortoisehg.bitbucket.io/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://bitbucket.org/tortoisehg/targz/downloads/

MODULES =		lang/python

MERCURIAL_VER =		devel/mercurial>=5.0,<5.1

BUILD_DEPENDS =		${MERCURIAL_VER} \
			devel/py-sip \
			editors/qscintilla \
			x11/py-qt4

RUN_DEPENDS =		${MERCURIAL_VER} \
			devel/py-iniparse \
			devel/py-sip \
			editors/py-qscintilla \
			x11/py-qt4

NO_TEST =		Yes

SHAREDIR =		${PREFIX}/share/tortoisehg

post-extract:
	@${SUBST_DATA} -c ${FILESDIR}/config.py \
		${WRKSRC}/tortoisehg/util/config.py

post-install:
	${INSTALL_DATA_DIR} ${SHAREDIR}
	${INSTALL_DATA} ${WRKSRC}/COPYING.txt ${SHAREDIR}

.include <bsd.port.mk>
