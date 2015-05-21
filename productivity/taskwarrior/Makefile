# $OpenBSD: Makefile,v 1.16 2015/05/21 14:49:42 czarkoff Exp $

COMMENT =	command line todo list manager

VERSION =	2.4.4
DISTNAME =	task-${VERSION}
PKGNAME =	taskwarrior-${VERSION}
REVISION =	0
CATEGORIES =	productivity

HOMEPAGE =	http://www.taskwarrior.org/

MAINTAINER=	Eric Lalonde <eric.c.lalonde@gmail.com>

MASTER_SITES =	${HOMEPAGE}/download/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

# Needs C++11; linker issues with clang
MODULES =		gcc4 \
			devel/cmake \
			lang/lua \
			lang/python
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*
MODLUA_SA =		Yes

WANTLIB += c gnutls m pthread

LIB_DEPENDS =		security/gnutls

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
		${WRKSRC}/doc/man/taskrc.5.in \
		${WRKSRC}/src/Config.cpp
	@perl -pi -e 's|share/doc/task-VERSION/|share/taskwarrior/|g' \
		${WRKSRC}/scripts/vim/README

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/share/taskwarrior/scripts/add-ons

.include <bsd.port.mk>
