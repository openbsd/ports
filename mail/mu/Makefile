COMMENT=	maildir indexer and searcher with emacs frontend

V =		1.10.7
GUILE_V =	3.0

DISTNAME =	mu-$V

FLAVORS =	guile
FLAVOR ?=

SHARED_LIBS =	guile-mu	0.1

CATEGORIES =	mail
HOMEPAGE =	http://www.djcbsoftware.nl/code/mu/

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c gio-2.0 glib-2.0 gmime-3.0 gobject-2.0
WANTLIB += m xapian

SITES =		https://github.com/djcb/mu/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/meson

BUILD_DEPENDS =	emacs->=26.3:editors/emacs

LIB_DEPENDS =	databases/xapian-core \
		devel/glib2 \
		mail/gmime30

# C++17
COMPILER=	base-clang ports-gcc

.if ${FLAVOR} == "guile"
WANTLIB +=	guile-${GUILE_V}
LIB_DEPENDS +=	lang/guile3
.else
CONFIGURE_ARGS +=	-Dguile=disabled
.endif

# needs readline >= 8.0
CONFIGURE_ARGS +=	-Dreadline=disabled

pre-configure:
	sed -e 's/exec guile/exec guile${GUILE_V}/' -i \
		${WRKDIST}/guile/*/*.scm

post-install:
	gunzip ${WRKINST}/${TRUEPREFIX}/share/info/*.info.gz
	mv ${WRKINST}/${TRUEPREFIX}/share/info/*.info \
		${WRKINST}/${TRUEPREFIX}/info/
	rm -r ${WRKINST}/${TRUEPREFIX}/share/info

.include <bsd.port.mk>
