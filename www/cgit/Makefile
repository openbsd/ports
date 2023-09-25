COMMENT =	web frontend for git repositories

DISTNAME =	cgit-1.2.3
CATEGORIES =	www devel

# upstream has git 2.25.1 called out as the specific version to build against
# https://git.zx2c4.com/cgit/commit/?id=fde897b8171ed2e925b44ec6f69590ec07241017
DISTFILES =	${DISTNAME}.tar.xz
DISTFILES.a = 	git-2.25.1.tar.gz

SITES =		https://git.zx2c4.com/cgit/snapshot/
SITES.a =	https://www.kernel.org/pub/software/scm/git/
HOMEPAGE =	https://git.zx2c4.com/cgit/about/

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
