# $OpenBSD: Makefile,v 1.2 2013/03/11 01:30:26 espie Exp $

COMMENT =	tool for programming Wouxun transcievers

DISTNAME =	owx-20110917

CATEGORIES =	comms

HOMEPAGE =	http://owx.chmurka.net/

MAINTAINER =	Mitja Muzenic <mitja@kerberos.si>

# Apache 2.0 license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	c m stdc++

MASTER_SITES =	http://distfiles.nl/

USE_GMAKE =	Yes
NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/owx
	${INSTALL_DATA} ${WRKSRC}/docs/README \
		${PREFIX}/share/doc/owx

.include <bsd.port.mk>
