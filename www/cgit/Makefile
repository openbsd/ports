# $OpenBSD: Makefile,v 1.23 2018/01/05 08:31:26 bentley Exp $

COMMENT =	web frontend for git repositories

DISTNAME =	cgit-1.1
CATEGORIES =	www devel
REVISION =	0

DISTFILES =	${DISTNAME}.tar.gz:0 \
		git-2.10.2.tar.gz:1

MASTER_SITES0 =		https://git.zx2c4.com/cgit/snapshot/
MASTER_SITES1 =		https://www.kernel.org/pub/software/scm/git/
HOMEPAGE =		https://git.zx2c4.com/cgit/about/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

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
