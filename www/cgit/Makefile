# $OpenBSD: Makefile,v 1.13 2013/08/07 21:32:46 naddy Exp $

COMMENT =	web frontend for git repositories

DISTNAME =	cgit-0.9.2
CATEGORIES =	www devel

DISTFILES =	${DISTNAME}.tar.gz:0 \
		git-1.8.3.2.tar.gz:1

MASTER_SITES0 =		http://git.zx2c4.com/cgit/snapshot/
MASTER_SITES1 =		https://git-core.googlecode.com/files/
HOMEPAGE =		http://git.zx2c4.com/cgit/about/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =	yes

MODULES =	converters/libiconv

PREFIX =	${VARBASE}/www
MAKE_FLAGS +=	V=1 NEEDS_LIBICONV=1 LDFLAGS+='-static -L${LOCALBASE}/lib'

post-extract:
	rmdir ${WRKSRC}/git
	mv ${WRKDIR}/git-* ${WRKSRC}/git

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/conf/modules.sample
	${INSTALL_DATA} ${FILESDIR}/cgit.conf ${PREFIX}/conf/modules.sample/cgit.conf.dist

.include <bsd.port.mk>
