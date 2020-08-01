# $OpenBSD: Makefile,v 1.14 2020/08/01 11:30:37 sthen Exp $

COMMENT=	authentication provider for OATH one-time passwords

DISTNAME=	login_oath-0.8
REVISION=	6
CATEGORIES=	sysutils

MASTER_SITES=	https://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c oath util

NO_TEST=	Yes

LIB_DEPENDS=	security/oath-toolkit

FAKE_FLAGS=	BINDIR=${PREFIX}/libexec/auth \
		MANDIR=${PREFIX}/man/man

post-install:
	${INSTALL_DATA} ${WRKSRC}/README \
	    ${PREFIX}/share/doc/pkg-readmes/${PKGSTEM}

.include <bsd.port.mk>
