# $OpenBSD: Makefile,v 1.13 2000/10/22 15:43:37 espie Exp $

DISTNAME=	latex2html-97.1
CATEGORIES=	textproc www
NEED_VERSION=	 1.230

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.tex.ac.uk/ctan/tex-archive/support/latex2html/sources/

RUN_DEPENDS=	ppmtogif::graphics/netpbm \
		pnmtopng::graphics/netpbm \
		gs::print/ghostscript/gnu

NO_BUILD=	Yes

DOCS=		userman.tex manual.tex manual.gls manual.dvi manual.bbl \
		manual.aux manual.ind manhtml.tex eform.ps changebar.sty \
		figure.ps credits.tex l2hfiles.dat Makefile justify.sty \
		hypextra.tex overview.tex htmllist.sty support.tex \
		licence.tex url.sty l2hidx.ist features.tex html.sty \
		l2hglo.ist problems.tex l2hman.sty appendix.tex manual.index

pre-patch:
	cd ${WRKSRC}; \
	for file in configure-pstoimg install-test texexpand pstoimg latex2html; do\
		mv $$file $$file.orig; \
		sed -e 1s,/usr/local/bin/perl,/usr/bin/perl, <$$file.orig >$$file; \
	done

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/latex2html/styles
	${INSTALL_DATA} ${WRKSRC}/styles/* ${PREFIX}/lib/latex2html/styles
	${INSTALL_DATA_DIR} ${PREFIX}/lib/latex2html/docs/changebar
	${INSTALL_DATA} ${WRKSRC}/docs/changebar/* ${PREFIX}/lib/latex2html/docs/changebar
	${INSTALL_DATA_DIR} ${PREFIX}/lib/latex2html/docs/psfiles
	${INSTALL_DATA} ${WRKSRC}/docs/psfiles/* ${PREFIX}/lib/latex2html/docs/psfiles
	${INSTALL_DATA_DIR} ${PREFIX}/lib/latex2html/docs/hthtml
	${INSTALL_DATA} ${WRKSRC}/docs/hthtml/* ${PREFIX}/lib/latex2html/docs/hthtml
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/docs/${i} ${PREFIX}/lib/latex2html/docs
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/lib/latex2html/tests
	${INSTALL_DATA} ${WRKSRC}/tests/* ${PREFIX}/lib/latex2html/tests
	${INSTALL_DATA_DIR} ${PREFIX}/lib/latex2html/icons.png
	${INSTALL_DATA} ${WRKSRC}/icons.png/* ${PREFIX}/lib/latex2html/icons.png
	${INSTALL_DATA_DIR} ${PREFIX}/lib/latex2html/icons.gif
	${INSTALL_DATA} ${WRKSRC}/icons.gif/* ${PREFIX}/lib/latex2html/icons.gif
	${INSTALL_DATA_DIR} ${PREFIX}/lib/latex2html/texinputs
	${INSTALL_DATA} ${WRKSRC}/texinputs/* ${PREFIX}/lib/latex2html/texinputs
	${INSTALL_DATA_DIR} ${PREFIX}/lib/latex2html/makeseg
	${INSTALL_DATA} ${WRKSRC}/makeseg/* ${PREFIX}/lib/latex2html/makeseg
	${INSTALL_DATA_DIR} ${PREFIX}/lib/latex2html/versions
	${INSTALL_DATA} ${WRKSRC}/versions/* ${PREFIX}/lib/latex2html/versions
	${INSTALL_DATA_DIR} ${PREFIX}/lib/latex2html/example
	${INSTALL_DATA} ${WRKSRC}/example/* ${PREFIX}/lib/latex2html/example
	${INSTALL_SCRIPT} ${WRKSRC}/install-test ${WRKSRC}/pstoimg ${WRKSRC}/makemap ${WRKSRC}/texexpand ${WRKSRC}/configure-pstoimg ${WRKSRC}/latex2html.config ${WRKSRC}/pstoimg_nopipes ${WRKSRC}/latex2html ${PREFIX}/lib/latex2html
	ln -s ${TRUEPREFIX}/lib/latex2html/latex2html ${PREFIX}/bin

.include <bsd.port.mk>

