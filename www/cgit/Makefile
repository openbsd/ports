# $OpenBSD: Makefile,v 1.16 2015/04/05 22:07:59 landry Exp $

COMMENT =	web frontend for git repositories

DISTNAME =	cgit-0.11.2
CATEGORIES =	www devel

DISTFILES =	${DISTNAME}.tar.gz:0 \
		git-2.3.2.tar.gz:1

MASTER_SITES0 =		http://git.zx2c4.com/cgit/snapshot/
MASTER_SITES1 =		https://www.kernel.org/pub/software/scm/git/
HOMEPAGE =		http://git.zx2c4.com/cgit/about/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =	yes

MODULES =	converters/libiconv

PREFIX =	${VARBASE}/www
MAKE_FLAGS +=	V=1 NO_LUA=1 LDFLAGS+='${STATIC} -L${LOCALBASE}/lib'

post-extract:
	rmdir ${WRKSRC}/git
	mv ${WRKDIR}/git-* ${WRKSRC}/git

post-install:
	mv ${PREFIX}/htdocs ${PREFIX}/cgit

.include <bsd.port.mk>
