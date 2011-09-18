# $OpenBSD: Makefile,v 1.1.1.1 2011/09/18 20:27:54 landry Exp $

COMMENT =	tool for programming Wouxun transcievers

DISTNAME =	owx-20110917

CATEGORIES =	comms

HOMEPAGE =	http://owx.chmurka.net/

MAINTAINER =	Mitja Muzenic <mitja@kerberos.si>

# Apache 2.0 license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB =	c m stdc++

MASTER_SITES =	http://distfiles.nl/

USE_GMAKE =	Yes
NO_REGRESS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/owx
	${INSTALL_DATA} ${WRKSRC}/docs/README \
		${PREFIX}/share/doc/owx

.include <bsd.port.mk>
