# $OpenBSD: Makefile,v 1.21 2001/10/15 11:36:01 espie Exp $

COMMENT=	"X11-based presentation tool"

DISTNAME=	magicpoint-1.08a
CATEGORIES=	misc productivity
NEED_VERSION=	1.474
MASTER_SITES=	ftp://ftp.mew.org/pub/MagicPoint/

HOMEPAGE=	http://www.mew.org/mgp/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# plus sign is for localized (i.e. Japanese) version
LIB_DEPENDS+=	ttf.1::print/freetype \
		png.2::graphics/png \
		mng::graphics/libmng

MODULES=	gettext

CONFIGURE_STYLE=gnu imake
CONFIGURE_ARGS=	--disable-vflib

post-configure:
	@cd ${WRKSRC}/contrib/xmindpath && \
		./configure --prefix='$${DESTDIR}${PREFIX}'

post-build:
	@cd ${WRKSRC}/contrib/xmindpath && ${MAKE_PROGRAM}
	@cd ${WRKSRC}/contrib/xwintoppm && ${XMKMF}

MAN1=	mgp.1 mgp2ps.1 mgpembed.1 mgpnet.1 xwintoppm.1 xmindpath.1

DOCS=	COPYRIGHT COPYRIGHT.jp README README.fonts README.fonts.jp \
	README.lang SYNTAX TODO.jp USAGE USAGE.jp
SAMPLES=	README README.jp cloud.jpg dad.eps dad.jpg default.mgp \
		embed-jp.mgp embed.mgp gradation-jp.mgp \
		gradation.mgp mgp-old1.jpg mgp-old2.jpg mgp-old3.jpg \
		mgp.mng mgp1.jpg mgp2.jpg mgp3.jpg mgp3.xbm mgprc-sample \
		multilingual.mgp sample-fr.mgp sample-jp.mgp sample.mgp \
		sendmail6-jp.mgp sendmail6.mgp tutorial-jp.mgp tutorial.mgp \
		v6-jp.mgp v6.mgp v6header.eps v6header.jpg
EMACS=	README mgp.el mgp.sty sample.tex ../mgp-mode.el

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
	${INSTALL_PROGRAM} ${WRKSRC}/contrib/eqn2eps.sh \
		 ${PREFIX}/bin/eqn2eps
	${INSTALL_PROGRAM} ${WRKSRC}/contrib/mgp2html.pl \
		${PREFIX}/bin/mgp2html
	${INSTALL_PROGRAM} ${WRKSRC}/contrib/mgp2latex.pl \
		${PREFIX}/bin/mgp2latex
	${INSTALL_PROGRAM} ${WRKSRC}/contrib/tex2eps.sh \
		${PREFIX}/bin/tex2eps
	

.include <bsd.port.mk>
