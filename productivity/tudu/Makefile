# $OpenBSD: Makefile,v 1.9 2019/07/19 18:20:08 fcambus Exp $

COMMENT =	hierarchical todos manager

DISTNAME =	tudu-0.10.3

CATEGORIES =	productivity

HOMEPAGE =	https://code.meskio.net/tudu/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c m curses

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${HOMEPAGE}

CONFIGURE_STYLE = simple

CONFIGURE_ARGS = --sysconfdir=${SYSCONFDIR} \
		 --mandir=${PREFIX}/man

FAKE_FLAGS =	SYSCONFDIR=${TRUEPREFIX}/share/examples/tudu

NO_TEST =	Yes

post-extract:
	# locale::facet::_S_create_c_locale throws in non-C locales
	sed -i '/locale(""));/d' ${WRKSRC}/src/*.cc

.include <bsd.port.mk>
