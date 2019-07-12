# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:41 sthen Exp $

COMMENT =		fancy dd

V =			0.4
GH_TAGNAME =		DISKRESCUE_${V:S/./_/g}
GH_ACCOUNT =		conformal
GH_PROJECT =		diskrescue
DISTNAME =		${GH_PROJECT}-${V}
CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/conformal/diskrescue/wiki

MAINTAINER =		Laurent Fanis <laurent.fanis@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/diskrescue ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/diskrescue.8 ${PREFIX}/man/man8/diskrescue.8

.include <bsd.port.mk>
