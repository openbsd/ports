COMMENT=	authentication provider for OATH one-time passwords

DISTNAME=	login_oath-0.8
REVISION=	7
CATEGORIES=	sysutils

SITES=		https://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c oath util

NO_TEST=	Yes

LIB_DEPENDS=	security/oath-toolkit

FAKE_FLAGS=	BINDIR=${PREFIX}/libexec/auth \
		MANDIR=${PREFIX}/man/man

pre-build:
	@if ! grep -q _permit_setugid /usr/share/mk/bsd.prog.mk; then \
		echo build machine has old bsd.prog.mk: please update; exit 1; fi

post-install:
	${INSTALL_DATA} ${WRKSRC}/README \
	    ${PREFIX}/share/doc/pkg-readmes/${PKGSTEM}

.include <bsd.port.mk>
