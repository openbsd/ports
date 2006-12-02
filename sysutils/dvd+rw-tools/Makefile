# $OpenBSD: Makefile,v 1.3 2006/12/02 20:24:17 pvalchev Exp $

COMMENT=		"mastering tools for DVD+RW/+R/-R/-RW"

DISTNAME=		dvd+rw-tools-5.21.4.10.8
PKGNAME=		${DISTNAME}p0
CATEGORIES=		sysutils
HOMEPAGE=		http://fy.chalmers.se/~appro/linux/DVD+RW/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}tools/

RUN_DEPENDS=		:cdrtools->=1.10:sysutils/cdrtools
WANTLIB=		c m stdc++

# allow growisofs to work under sudo(8)
CFLAGS+=		-DI_KNOW_ALL_ABOUT_SUDO

MAKE_FLAGS+=		CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS} -fno-exceptions"

NO_REGRESS=		Yes

do-install:
.for prog in growisofs dvd+rw-format dvd+rw-booktype dvd+rw-mediainfo
	${INSTALL_PROGRAM} ${WRKBUILD}/${prog} ${PREFIX}/bin
.endfor
	${INSTALL_MAN} ${WRKSRC}/growisofs.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dvd+rw-tools
	${INSTALL_DATA} ${WRKSRC}/index.html ${PREFIX}/share/doc/dvd+rw-tools

.include <bsd.port.mk>
