COMMENT=	X11-based presentation tool

DISTNAME=	magicpoint-1.13a
EPOCH=		0

CATEGORIES=	misc productivity

SITES=		ftp://sh.wide.ad.jp/WIDE/free-ware/mgp/

HOMEPAGE=	http://member.wide.ad.jp/wg/mgp/

PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xmu Xt Xtst c gif iconv
WANTLIB += m mng png util

RUN_DEPENDS+=	devel/gettext,-runtime

# plus sign is for localized (i.e. Japanese) version
LIB_DEPENDS+=	graphics/png \
		graphics/libmng \
		graphics/giflib

RUN_DEPENDS+=	graphics/netpbm \
		print/ghostscript/gnu-fonts

# XXX while autoconf will append gnu in CONFIGURE_STYLE, we explicitely
# set it anyway because order matters
CONFIGURE_STYLE=autoconf gnu imake no-autoheader

AUTOCONF_VERSION=2.13

CONFIGURE_ARGS=		--disable-vflib \
			--enable-gif \
			--enable-locale \
			--disable-freetype

NO_TEST=	Yes

pre-patch:
	perl -pi -e 's|malloc.h|stdlib.h|' ${WRKSRC}/image/new.c

post-configure:
	@cd ${WRKSRC}/contrib/xmindpath && \
		ac_cv_path_install='install -c' \
		./configure --prefix='$${DESTDIR}${PREFIX}'

post-build:
	@cd ${WRKSRC}/contrib/xmindpath && ${MAKE_PROGRAM}
	@cd ${WRKSRC}/contrib/xwintoppm && ${XMKMF}

DOCS=	COPYRIGHT COPYRIGHT.jp FAQ README README.fonts README.fonts.jp \
	README.lang SYNTAX TODO.jp USAGE USAGE.jp
SAMPLES=	README README.jp cloud.jpg dad.eps dad.jpg default.mgp \
		embed-jp.mgp embed.mgp gradation-jp.mgp \
		gradation.mgp mgp-old1.jpg mgp-old2.jpg mgp-old3.jpg \
		mgp.mng mgp1.jpg mgp2.jpg mgp3.jpg mgp3.xbm mgprc-sample \
		multilingual.mgp sample-fr.mgp sample-jp.mgp sample.mgp \
		sendmail6-jp.mgp sendmail6.mgp tutorial-jp.mgp tutorial.mgp \
		v6-jp.mgp v6.mgp v6header.eps v6header.jpg
EMACS=	README mgp.el mgp.sty sample.tex ../mgp-mode.el

MAKE_FLAGS +=	CDEBUGFLAGS="${CFLAGS}"
# NOTE: there are some discussions/twists in gzip'ing xmindpath.1.
post-install:
	@cd ${WRKSRC}/contrib/xmindpath && ${MAKE_PROGRAM} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mgp/sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/mgp/emacs
	@for i in $(DOCS); do \
	   ${INSTALL_DATA} ${WRKSRC}/$$i ${PREFIX}/share/doc/mgp; \
	done
	@for i in $(SAMPLES); do \
	   ${INSTALL_DATA} ${WRKSRC}/sample/$$i ${PREFIX}/share/doc/mgp/sample; \
	done
	@for i in $(EMACS); do \
		 ${INSTALL_DATA} ${WRKSRC}/contrib/mgp-el/$$i \
			 ${PREFIX}/share/mgp/emacs; \
	done
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/eqn2eps.sh \
		 ${PREFIX}/bin/eqn2eps
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/mgp2html.pl \
		${PREFIX}/bin/mgp2html
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/mgp2latex.pl \
		${PREFIX}/bin/mgp2latex
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/tex2eps.sh \
		${PREFIX}/bin/tex2eps

.include <bsd.port.mk>
