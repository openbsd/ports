# $OpenBSD: Makefile,v 1.5 2012/03/06 17:17:09 landry Exp $

COMMENT =	web frontend for git repositories

DISTNAME =	cgit-0.9.0.2
CATEGORIES =	www devel

DISTFILES = 	cgit-0.9.0.2.tar.gz:0 \
		git-1.7.4.5.tar.gz:1

MASTER_SITES0 =		http://distfiles.bsdfrog.org/
MASTER_SITES1 =		ftp://ftp.kernel.org/pub/software/scm/git/ \
			ftp://ftp.de.kernel.org/pub/software/scm/git/ \
			ftp://ftp.au.kernel.org/pub/software/scm/git/
HOMEPAGE =	http://hjemli.net/git/cgit/about/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

USE_GMAKE =	yes

MODULES =	converters/libiconv
WANTLIB +=	c crypto pthread z

PREFIX =	/var/www
MAKE_FLAGS +=	V=1 NEEDS_LIBICONV=1 LDFLAGS+=-L${LOCALBASE}/lib

post-extract:
	rmdir ${WRKSRC}/git
	ln -s ${WRKDIR}/git-* ${WRKSRC}/git

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/conf/modules.sample
	${INSTALL_DATA} ${FILESDIR}/cgit.conf ${PREFIX}/conf/modules.sample/cgit.conf.dist

.include <bsd.port.mk>
