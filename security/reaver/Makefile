# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:35 sthen Exp $

COMMENT =	online brute force WPS PINs

VERSION =	1.6.5
GH_ACCOUNT =	t6x
GH_PROJECT =	reaver-wps-fork-t6x
GH_TAGNAME =	v${VERSION}
PKGNAME =	reaver-${VERSION}

CATEGORIES =	security net

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2 or later
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m pcap

USE_GMAKE =	Yes
RUN_DEPENDS =	security/pixiewps

CONFIGURE_STYLE = gnu

WRKSRC=		${WRKDIST}/src

post-install:
	${INSTALL_MAN} ${WRKDIST}/docs/reaver.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
