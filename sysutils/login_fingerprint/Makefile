# $OpenBSD: Makefile,v 1.20 2019/07/12 20:49:45 sthen Exp $

COMMENT=	provide fingerprint authentication

DISTNAME=	login_fingerprint-1.2
REVISION=	6
CATEGORIES=    	sysutils

MASTER_SITES=	http://blade2k.humppa.hu/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto fprint freetype

LIB_DEPENDS=	security/libfprint>=0.6.0

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/login_fingerprint

FAKE_FLAGS=	BINDIR=${PREFIX}/libexec/auth \
		DOCDIR=${PREFIX}/share/doc/login_fingerprint \
		MANDIR=${PREFIX}/man/man

pre-configure:
	sed -i -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_fingerprint.8

.include <bsd.port.mk>
