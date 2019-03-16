# $OpenBSD: Makefile,v 1.8 2019/03/16 20:20:02 kn Exp $

COMMENT =		static git page generator

DISTNAME =		stagit-0.9.1

CATEGORIES =		www

HOMEPAGE =		https://codemadness.org/

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c git2

LIB_DEPENDS =		devel/libgit2/libgit2>=0.22

MASTER_SITES =		https://codemadness.org/releases/stagit/

MAKE_FLAGS =		CC='${CC}' \
			CFLAGS='${CFLAGS} -I${LOCALBASE}/include' \
			LDFLAGS='${LDFLAGS} -L${LOCALBASE}/lib -lgit2' \
			COMPATOBJ=''

NO_TEST =		Yes

EXAMPLESDIR =		${PREFIX}/share/examples/stagit

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/
	mv ${PREFIX}/share/doc/stagit/example_*.sh ${EXAMPLESDIR}/

.include <bsd.port.mk>
