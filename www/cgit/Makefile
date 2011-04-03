# $OpenBSD: Makefile,v 1.2 2011/04/03 21:32:49 jasper Exp $

COMMENT =	web frontend for git repositories

DISTNAME =	cgit-0.8.3.5
CATEGORIES =	www devel

MASTER_SITES =	http://distfiles.nl/
HOMEPAGE =	http://hjemli.net/git/cgit/about/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

USE_GMAKE =	yes

MODULES =	converters/libiconv
BUILD_DEPENDS =	devel/git:patch
WANTLIB +=	c crypto pthread z

PREFIX =	/var/www
MAKE_FLAGS +=	V=1 NEEDS_LIBICONV=1 LDFLAGS+=-L${LOCALBASE}/lib

post-extract:
	rmdir ${WRKSRC}/git
	ln -s ${WRKDIR}/devel/git/git-* ${WRKSRC}/git

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/conf/modules.sample
	${INSTALL_DATA} ${FILESDIR}/cgit.conf ${PREFIX}/conf/modules.sample/cgit.conf.dist

.include <bsd.port.mk>
