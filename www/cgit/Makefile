# $OpenBSD: Makefile,v 1.26 2019/07/12 20:50:18 sthen Exp $

COMMENT =	web frontend for git repositories

DISTNAME =	cgit-1.2.1
CATEGORIES =	www devel
REVISION =	0

DISTFILES =	${DISTNAME}.tar.xz:0 \
		git-2.18.0.tar.gz:1

MASTER_SITES0 =		https://git.zx2c4.com/cgit/snapshot/
MASTER_SITES1 =		https://www.kernel.org/pub/software/scm/git/
HOMEPAGE =		https://git.zx2c4.com/cgit/about/

# GPLv2
PERMIT_PACKAGE =	Yes

USE_GMAKE =	yes

BUILD_DEPENDS =	textproc/asciidoc
LIB_DEPENDS =	converters/libiconv

PREFIX =	${VARBASE}/www
MAKE_FLAGS +=	V=1 NO_GETTEXT=1 NO_LUA=1 LDFLAGS+='${STATIC} -L${LOCALBASE}/lib'

ALL_TARGET =	all doc-man

post-extract:
	rmdir ${WRKSRC}/git
	mv ${WRKDIR}/git-* ${WRKSRC}/git

post-install:
	mv ${PREFIX}/htdocs ${PREFIX}/cgit
	${INSTALL_MAN} ${WRKBUILD}/cgitrc.5 ${WRKINST}${LOCALBASE}/man/man5

.include <bsd.port.mk>
