# $OpenBSD: Makefile,v 1.3 2017/07/23 09:26:28 espie Exp $

COMMENT =	hierarchical todos manager

DISTNAME =	tudu-0.10.2
REVISION =	0

CATEGORIES =	productivity

HOMEPAGE =	https://code.meskio.net/tudu/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m ncursesw ${COMPILER_LIBCXX}

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
