COMMENT =		static git page generator

DISTNAME =		stagit-1.0

CATEGORIES =		www

HOMEPAGE =		https://codemadness.org/

MAINTAINER =		Hiltjo Posthuma <hiltjo@codemadness.org>

# MIT/X Consortium License
PERMIT_PACKAGE =	Yes

# uses pledge()
# uses unveil()
WANTLIB =		c git2

LIB_DEPENDS =		devel/libgit2/libgit2>=0.22

MASTER_SITES =		https://codemadness.org/releases/stagit/

MAKE_FLAGS =		CC='${CC}' \
			CFLAGS='${CFLAGS}' \
			LDFLAGS='${LDFLAGS}' \
			LIBGIT_INC='-I${LOCALBASE}/include' \
			LIBGIT_LIB='-L${LOCALBASE}/lib -lgit2' \
			COMPATOBJ=''

NO_TEST =		Yes

EXAMPLESDIR =		${PREFIX}/share/examples/stagit

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/
	mv ${PREFIX}/share/doc/stagit/example_*.sh ${EXAMPLESDIR}/

.include <bsd.port.mk>
