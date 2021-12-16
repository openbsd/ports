# $OpenBSD: Makefile,v 1.3 2021/12/16 00:29:56 kn Exp $

COMMENT =		recurrent neural network for audio noise reduction
# no tag or release, use HEAD
DISTNAME =		rnnoise-master-7f449bf8bd3b933891d12c30112268c4090e4d59
V =			0.0.0.20210312
PKGNAME =		rnnoise-${V}
REVISION =		0
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
CONFIGURE_ARGS =	--disable-doc
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

EXAMPLESDIR =		${PREFIX}/share/examples/rnnoise

post-build:
	# fix "unknown" package version
	sed -i /^Version:/s,unknown,${V}, ${WRKBUILD}/rnnoise.pc

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/rnnoise_demo.c ${EXAMPLESDIR}/

.include <bsd.port.mk>
