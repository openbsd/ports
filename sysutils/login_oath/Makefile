# $OpenBSD: Makefile,v 1.9 2015/11/19 14:58:50 sthen Exp $

COMMENT=	authentication provider for OATH one-time passwords

DISTNAME=	login_oath-0.8
REVISION=	3
CATEGORIES=	sysutils

MASTER_SITES=	http://spacehopper.org/mirrors/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c oath util

NO_TEST=	Yes

LIB_DEPENDS=	security/oath-toolkit

FAKE_FLAGS=	BINDIR=${PREFIX}/libexec/auth \
		MANDIR=${PREFIX}/man/man

post-install:
	${INSTALL_DATA} ${WRKSRC}/README \
	    ${PREFIX}/share/doc/pkg-readmes/${FULLPKGNAME}

.include <bsd.port.mk>
