# $OpenBSD: Makefile,v 1.13 2015/01/15 15:47:05 abieber Exp $

COMMENT =	command line todo list manager

VERSION =	2.4.0
DISTNAME =	task-${VERSION}
PKGNAME =	taskwarrior-${VERSION}
CATEGORIES =	productivity

HOMEPAGE =	http://www.taskwarrior.org/

MAINTAINER=	Eric Lalonde <eric.c.lalonde@gmail.com>

MASTER_SITES =	${HOMEPAGE}/download/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		devel/cmake \
			lang/lua
MODLUA_SA =		Yes

WANTLIB += c gnutls m ncurses pthread readline stdc++ uuid

LIB_DEPENDS =	security/gnutls \
		sysutils/e2fsprogs>=1.42.7

CONFIGURE_STYLE =	cmake

CONFIGURE_ARGS +=	-DTASK_DOCDIR=share/taskwarrior \
			-DTASK_MAN1DIR=man/man1 \
			-DTASK_MAN5DIR=man/man5

CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

pre-configure:
	@perl -pi -e 's|share/doc/task/|share/taskwarrior/|g' \
		${WRKSRC}/doc/man/task-color.5.in \
		${WRKSRC}/doc/man/task-tutorial.5.in \
		${WRKSRC}/doc/man/taskrc.5.in \
		${WRKSRC}/src/Config.cpp
	@perl -pi -e 's|share/doc/task-VERSION/|share/taskwarrior/|g' \
		${WRKSRC}/scripts/vim/README

.include <bsd.port.mk>
