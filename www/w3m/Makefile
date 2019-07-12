# $OpenBSD: Makefile,v 1.92 2019/07/12 20:51:07 sthen Exp $

COMMENT=	pager/text-based web browser

DISTNAME=	w3m-0.5.3
REVISION=	8
CATEGORIES=	www
HOMEPAGE=	http://w3m.sourceforge.net/

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto curses gc iconv intl m ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=w3m/}
MASTER_SITES0=	${MASTER_SITE_DEBIAN:=main/w/w3m/}

DISTFILES=	${DISTNAME}.tar.gz \
		w3m_0.5.3-37.debian.tar.xz:0

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/boehm-gc devel/gettext,-runtime

FLAVORS=	image
FLAVOR?=

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-xface \
		--with-termlib=curses \
		--with-gc=${LOCALBASE}

NO_TEST=	Yes

.if ${FLAVOR:Mimage}
LIB_DEPENDS+=	graphics/imlib2
CONFIGURE_ARGS+=--with-imagelib=imlib2
WANTLIB+=	Imlib2 X11
.else
CONFIGURE_ARGS+=--enable-image=no
.endif

PATCH_DIST_STRIP= -p1

do-distpatch:
	@for p in ${WRKDIR}/debian/patches/*.patch; do \
	    ${PATCH} ${PATCH_DIST_ARGS} < $$p; \
	done

post-build:
	cd ${WRKSRC}/doc-jp; \
	    for f in ${EUC_JP}; do \
		iconv -f euc-jp -t utf-8 $$f >$$f.tmp; \
		mv $$f.tmp $$f; \
	    done; \
	    for f in ${ISO_2022_JP}; do \
		iconv -f iso-2022-jp -t utf-8 $$f >$$f.tmp; \
		mv $$f.tmp $$f; \
	    done

post-install:
.for src dst in doc "" doc-jp ja doc-de de
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m/${dst}
	cd ${WRKSRC}/${src}; \
	    ${INSTALL_DATA} !(w3m.1|CVS|*${DISTORIG}|README.cygwin) \
		${PREFIX}/share/doc/w3m/${dst}
.endfor

EUC_JP=		FAQ.html HISTORY MANUAL.html README README.SSL README.cookie \
		README.dict README.func README.img README.keymap README.m17n \
		README.mailcap README.menu README.migemo README.mouse \
		README.siteconf STORY.html menu.default menu.submenu w3m.1
ISO_2022_JP=	README.passwd README.pre_form README.tab

.include <bsd.port.mk>
