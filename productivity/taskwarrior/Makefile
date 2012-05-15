# $OpenBSD: Makefile,v 1.4 2012/05/15 19:38:01 jasper Exp $

COMMENT =	command line todo list manager

VERSION =	2.0.0
DISTNAME =	task-${VERSION}
PKGNAME =	taskwarrior-${VERSION}
REVISION =	0
CATEGORIES =	productivity

HOMEPAGE =	http://www.taskwarrior.org/

MASTER_SITES =	${HOMEPAGE}/download/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =		devel/cmake \
			lang/lua

WANTLIB =		c e2fs-uuid m stdc++ ${MODLUA_WANTLIB}

LIB_DEPENDS =		${MODLUA_LIB_DEPENDS} \
			sysutils/e2fsprogs

CONFIGURE_STYLE =	cmake

CONFIGURE_ARGS +=	-DTASK_DOCDIR=share/taskwarrior \
			-DTASK_MAN1DIR=man/man1 \
			-DTASK_MAN5DIR=man/man5

CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS =		Yes

pre-configure:
	@perl -pi -e 's|share/doc/task/|share/taskwarrior/|g' \
		${WRKSRC}/doc/man/task-color.5.in \
		${WRKSRC}/doc/man/task-tutorial.5.in \
		${WRKSRC}/doc/man/taskrc.5.in \
		${WRKSRC}/src/Config.cpp
	@perl -pi -e 's|share/doc/task-VERSION/|share/taskwarrior/|g' \
		${WRKSRC}/scripts/vim/README

.include <bsd.port.mk>
