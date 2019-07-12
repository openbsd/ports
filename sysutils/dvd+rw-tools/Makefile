# $OpenBSD: Makefile,v 1.18 2019/07/12 20:49:42 sthen Exp $

COMMENT=		mastering tools for DVD+RW/+R/-R/-RW

DISTNAME=		dvd+rw-tools-7.1
CATEGORIES=		sysutils
HOMEPAGE=		http://fy.chalmers.se/~appro/linux/DVD+RW/
REVISION=		1

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}tools/

WANTLIB += c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

RUN_DEPENDS=		sysutils/cdrtools>=1.10

# allow growisofs to work under sudo(8)
CFLAGS+=		-DI_KNOW_ALL_ABOUT_SUDO

MAKE_FLAGS+=		CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS} -fno-exceptions"

NO_TEST=		Yes

do-install:
.for prog in growisofs dvd+rw-format dvd+rw-booktype dvd+rw-mediainfo
	${INSTALL_PROGRAM} ${WRKBUILD}/${prog} ${PREFIX}/bin
.endfor
	${INSTALL_MAN} ${WRKSRC}/growisofs.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dvd+rw-tools
	${INSTALL_DATA} ${WRKSRC}/index.html ${PREFIX}/share/doc/dvd+rw-tools

.include <bsd.port.mk>
