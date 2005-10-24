# $OpenBSD: Makefile,v 1.4 2005/10/24 03:14:57 dons Exp $

COMMENT=	"liberalised reimplementation of cpp in Haskell"

V=		1.0
DISTNAME=	cpphs-${V}
CATEGORIES=	devel
MAINTAINER=	Don Stewart <dons@openbsd.org>
HOMEPAGE=	http://haskell.org/cpphs/
MASTER_SITES=	http://www.cs.york.ac.uk/fp/cpphs/

# Pure Haskell 98. Could also interpret via Hugs
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
MODULES=	ghc
HC=		ghc
HC_OPTS=	-O -o cpphs --make
.else
BUILD_DEPENDS+=	bin/hmake::lang/nhc98
HC=		hmake 
HC_OPTS=	-package base
.endif

WANTLIB=	c gmp m

do-build:
	( cd ${WRKSRC} && ${HC} ${HC_OPTS} cpphs )

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cpphs        ${PREFIX}/bin
	${INSTALL_MAN}     ${WRKSRC}/docs/cpphs.1 ${PREFIX}/man/man1

do-regress:
	( cd ${WRKSRC}/tests && ./runtests )

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
