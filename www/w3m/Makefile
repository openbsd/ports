COMMENT=	pager/text-based web browser

V=		0.5.3
P=		20210102
REVISION=	0

DISTNAME=	w3m_$V+git$P
PKGNAME=	w3m-$Vpl$P
WRKDIST=	${WRKDIR}/w3m-$V+git$P
EXTRACT_SUFX=	.orig.tar.xz

CATEGORIES=	www

HOMEPAGE=	http://w3m.sourceforge.net/

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto curses gc iconv intl m ssl z

MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/w/w3m/}

BUILD_DEPENDS=	devel/gettext,-tools
DEBUG_PACKAGES=	${BUILD_PACKAGES}

LIB_DEPENDS=	devel/boehm-gc \
		devel/gettext,-runtime

FLAVORS=	image
FLAVOR?=

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-xface \
		--with-termlib=curses \
		--with-gc=${LOCALBASE}

NO_TEST=	Yes
DEBUG_PACKAGES=	${BUILD_PACKAGES}

.if ${MACHINE_ARCH} == aarch64
# XXX somehow if w3m is compiled with -O2, boehm-gc (linked library)
# intermittently garbage collects a used pointer
CFLAGS +=	-O1
.endif

.if ${FLAVOR:Mimage}
LIB_DEPENDS+=	graphics/imlib2
CONFIGURE_ARGS+= --with-imagelib=imlib2
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
