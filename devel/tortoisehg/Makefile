# $OpenBSD: Makefile,v 1.40 2019/07/25 16:10:53 juanfra Exp $

COMMENT =		series of applications for Mercurial

# Change also the mercurial version in *_depends
MODPY_EGG_VERSION =	5.0.2
REVISION =		0
DISTNAME =		tortoisehg-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://tortoisehg.bitbucket.io/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://bitbucket.org/tortoisehg/targz/downloads/

MODULES =		lang/python
BUILD_DEPENDS =		devel/mercurial>=5.0,<5.1 \
			devel/py-sip \
			editors/qscintilla \
			x11/py-qt4

RUN_DEPENDS =		${BUILD_DEPENDS} \
			devel/py-iniparse \
			editors/py-qscintilla

NO_TEST =		Yes

SHAREDIR =		${PREFIX}/share/tortoisehg

post-extract:
	@${SUBST_DATA} -c ${FILESDIR}/config.py \
		${WRKSRC}/tortoisehg/util/config.py

post-install:
	${INSTALL_DATA_DIR} ${SHAREDIR}
	${INSTALL_DATA} ${WRKSRC}/COPYING.txt ${SHAREDIR}

.include <bsd.port.mk>
