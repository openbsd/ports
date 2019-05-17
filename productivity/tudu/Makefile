# $OpenBSD: Makefile,v 1.7 2019/05/17 16:19:40 sthen Exp $

COMMENT =	hierarchical todos manager

DISTNAME =	tudu-0.10.2
REVISION =	4

CATEGORIES =	productivity

HOMEPAGE =	https://code.meskio.net/tudu/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

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
