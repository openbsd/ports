COMMENT=	pager/text-based web browser

C=		5ae3ef7cb20cd2209629ac0508c05206fd0d0b00
DIST_TUPLE=	srht rkta w3m $C .
WRKDIST=	${WRKDIR}/w3m-$C
DISTNAME=	w3m-0.5.3pl20240810

CATEGORIES=	www

HOMEPAGE=	https://sr.ht/~rkta/w3m
# forked from https://github.com/tats/w3m, which is itself forked from
# https://w3m.sourceforge.net/

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto curses gc iconv intl m ssl z

BUILD_DEPENDS=	devel/gettext,-tools
DEBUG_PACKAGES=	${BUILD_PACKAGES}

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

LIB_DEPENDS=	devel/boehm-gc \
		devel/gettext,-runtime

FLAVORS=	image
FLAVOR?=

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-xface \
		--with-termlib=curses \
		--with-gc=${LOCALBASE}

NO_TEST=	Yes

.if ${MACHINE_ARCH} == aarch64
# XXX somehow if w3m is compiled with -O2, boehm-gc (linked library)
# intermittently garbage collects a used pointer
CFLAGS +=	-O1
.endif

.if ${FLAVOR:Mimage}
LIB_DEPENDS+=	graphics/imlib2
CONFIGURE_ARGS+= --with-imagelib=imlib2
CONFIGURE_ENV+=	CPPFLAGS=-I/usr/X11R6/include
WANTLIB+=	Imlib2 X11
.else
CONFIGURE_ARGS+= --enable-image=no
.endif

post-install:
.for src dst in doc "" doc-jp ja doc-de de
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m/${dst}
	cd ${WRKSRC}/${src}; \
	    ${INSTALL_DATA} !(w3m.1|CVS|*${DISTORIG}|README.cygwin) \
		${PREFIX}/share/doc/w3m/${dst}
.endfor
.if !${FLAVOR:Mimage}
	rm ${PREFIX}/share/doc/w3m/README.img
.endif

.include <bsd.port.mk>
