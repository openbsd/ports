# $OpenBSD: Makefile,v 1.7 2018/04/10 23:27:51 kn Exp $

COMMENT =		static git page generator

DISTNAME =		stagit-0.8

CATEGORIES =		www

HOMEPAGE =		https://git.2f30.org/stagit/

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c git2

LIB_DEPENDS =		devel/libgit2/libgit2>=0.22

MASTER_SITES =		https://dl.2f30.org/releases/

MAKE_FLAGS=		CC='${CC}' \
			CFLAGS='${CFLAGS}' \
			COMPATOBJ='' \
			GITINC=${LOCALBASE}/include \
			GITLIB=${LOCALBASE}/lib

NO_TEST =		Yes

.include <bsd.port.mk>
