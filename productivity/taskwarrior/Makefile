# $OpenBSD: Makefile,v 1.2 2011/06/04 12:10:43 kili Exp $

COMMENT =	command line todo list manager

VERSION =	1.9.4
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

MODULES =		devel/cmake

WANTLIB =		c e2fs-uuid lua m stdc++

LIB_DEPENDS =		lang/lua \
			sysutils/e2fsprogs

CONFIGURE_STYLE =	cmake

CONFIGURE_ARGS +=	-DTASK_DOCDIR=share/taskwarrior \
			-DTASK_MAN1DIR=man/man1 \
			-DTASK_MAN5DIR=man/man5

CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -le2fs-uuid"

pre-configure:
	@perl -pi -e 's|share/doc/task/|share/taskwarrior/|g' \
		${WRKSRC}/doc/man/task-color.5.in \
		${WRKSRC}/doc/man/task-tutorial.5.in \
		${WRKSRC}/doc/man/taskrc.5.in \
		${WRKSRC}/src/Config.cpp
	@perl -pi -e 's|share/doc/task-VERSION/|share/taskwarrior/|g' \
		${WRKSRC}/scripts/vim/README

.include <bsd.port.mk>
