# $OpenBSD: Makefile,v 1.7 2007/06/29 10:59:07 kili Exp $

COMMENT=	"liberalised reimplementation of cpp in Haskell"

V=		1.4
DISTNAME=	cpphs-${V}
CATEGORIES=	devel
MAINTAINER=	Matthias Kilian <kili@openbsd.org>
HOMEPAGE=	http://haskell.org/cpphs/
MASTER_SITES=	http://www.cs.york.ac.uk/fp/cpphs/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	c m

# Pure Haskell 98. Could also interpret via Hugs
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
WANTLIB+=	gmp
MODULES=	ghc
HC=		ghc
HC_OPTS=	-O -o cpphs --make
.else
BUILD_DEPENDS+=	::devel/hmake \
		::lang/nhc98
HC=		hmake 
HC_OPTS=	-nhc98 -package base
.endif

do-build:
	cd ${WRKSRC} && ${HC} ${HC_OPTS} cpphs

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cpphs        ${PREFIX}/bin
	${INSTALL_MAN}     ${WRKSRC}/docs/cpphs.1 ${PREFIX}/man/man1

do-regress:
	cd ${WRKSRC}/tests && /bin/sh ./runtests

.include <bsd.port.mk>
