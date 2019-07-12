# $OpenBSD: Makefile,v 1.26 2019/07/12 20:49:44 sthen Exp $

COMMENT=	i/o generator

V=		3.1
REVISION=	2
GH_TAGNAME=	IOGEN_${V:S/./_/g}
GH_ACCOUNT=	conformal
GH_PROJECT=	iogen
DISTNAME=	${GH_PROJECT}-${V}
CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/conformal/iogen

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c

NO_TEST=	Yes

CFLAGS+=	-DVERSION=\"${PKGNAME:S/iogen-//}\"
FAKE_FLAGS+=	BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"
MAKE_ENV=	CC="${CC}"

.include <bsd.port.mk>
