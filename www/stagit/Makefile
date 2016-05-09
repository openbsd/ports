# $OpenBSD: Makefile,v 1.3 2016/05/09 17:03:43 jca Exp $

COMMENT =		static git page generator

DISTNAME =		stagit-0.4

CATEGORIES =		www

HOMEPAGE =		http://git.2f30.org/stagit/

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c git2
LIB_DEPENDS =		devel/libgit2/libgit2>=0.22

MASTER_SITES =		http://dl.2f30.org/releases/

MAKE_FLAGS=		GITINC=${LOCALBASE}/include \
			GITLIB=${LOCALBASE}/lib

NO_TEST =		Yes

.include <bsd.port.mk>
