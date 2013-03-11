# $OpenBSD: Makefile,v 1.6 2013/03/11 11:41:31 espie Exp $

COMMENT=	authentication provider for OATH one-time passwords

DISTNAME=	login_oath-0.8
REVISION=	0
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
