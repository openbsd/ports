# $OpenBSD: Makefile,v 1.20 2019/07/12 20:49:02 sthen Exp $

COMMENT =		high level firewall language

DISTNAME =		hlfl-0.60.1
REVISION =		0
CATEGORIES =   		security lang

HOMEPAGE =		https://www.cusae.com/hlfl/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =		ftp://ftp.cusae.com/pub/hlfl/

FAKE_FLAGS =		prefix=${PREFIX} \
			datadir=${PREFIX}/share/examples/hlfl \
			mandir=${PREFIX}/man

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

pre-install:
	@perl -pi -e 's#\$$\{prefix}\/share\/hlfl\/services\.hlfl#${SYSCONFDIR}/services.hlfl#' ${WRKSRC}/doc/hlfl.1
	@perl -pi -e 's#\$$\{prefix}\/share#${PREFIX}/share/examples#' ${WRKSRC}/doc/hlfl.1

.include <bsd.port.mk>
