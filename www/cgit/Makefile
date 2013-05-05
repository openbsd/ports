# $OpenBSD: Makefile,v 1.10 2013/05/05 19:24:13 jasper Exp $

COMMENT =	web frontend for git repositories

DISTNAME =	cgit-0.9.1
REVISION =	0
CATEGORIES =	www devel

DISTFILES =	cgit-0.9.1.tar.gz:0 \
		git-1.7.4.5.tar.gz:1

MASTER_SITES0 =		http://git.zx2c4.com/cgit/snapshot/
MASTER_SITES1 =		http://ftp.kernel.org/pub/software/scm/git/ \
			ftp://ftp.kernel.org/pub/software/scm/git/ \
			ftp://ftp.de.kernel.org/pub/software/scm/git/ \
			ftp://ftp.au.kernel.org/pub/software/scm/git/
HOMEPAGE =		http://git.zx2c4.com/cgit/about/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =	yes

MODULES =	converters/libiconv
WANTLIB +=	c crypto pthread z

PREFIX =	/var/www
MAKE_FLAGS +=	V=1 NEEDS_LIBICONV=1 LDFLAGS+='-static -L${LOCALBASE}/lib'

post-extract:
	rmdir ${WRKSRC}/git
	ln -s ${WRKDIR}/git-* ${WRKSRC}/git

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/conf/modules.sample
	${INSTALL_DATA} ${FILESDIR}/cgit.conf ${PREFIX}/conf/modules.sample/cgit.conf.dist

.include <bsd.port.mk>
