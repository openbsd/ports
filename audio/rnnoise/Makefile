# $OpenBSD: Makefile,v 1.1.1.1 2021/12/15 22:24:32 kn Exp $

COMMENT =		recurrent neural network for audio noise reduction
# no tag or release, use HEAD
DISTNAME =		rnnoise-master-7f449bf8bd3b933891d12c30112268c4090e4d59
PKGNAME =		rnnoise-0.0.0.20210312
CATEGORIES =		audio

SHARED_LIBS =		rnnoise	0.0	# 4.1

HOMEPAGE =		https://jmvalin.ca/demo/rnnoise
MASTER_SITES =		https://gitlab.xiph.org/xiph/rnnoise/-/archive/master/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		m

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

NO_TEST =		Yes

EXAMPLESDIR =		${PREFIX}/share/examples/rnnoise

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/rnnoise_demo.c ${EXAMPLESDIR}/

.include <bsd.port.mk>
