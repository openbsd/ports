# $OpenBSD: Makefile,v 1.42 2009/04/09 09:25:20 ajacoutot Exp $

COMMENT=	format files for printing on PostScript printers

DISTNAME=	a2ps-4.14
PKGNAME=	${DISTNAME}p1
CATEGORIES=	print
SHARED_LIBS=	a2ps	2.0
MODGNU_SHARED_LIBS=a2ps	''

HOMEPAGE=	http://www.gnu.org/software/a2ps/

# GPLv3 or later, includes AFM files from Adobe with still unclear
# terms (see ${WRKSRC}/afm/MustRead.html).
PERMIT_PACKAGE_CDROM=	without charge
PERMIT_DISTFILES_CDROM=	without charge
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

MASTER_SITES=	${MASTER_SITE_GNU:=a2ps/}

MODULES=	devel/gettext

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/auxdir

RUN_DEPENDS=	::print/psutils
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::devel/gperf

FLAVORS=	a4 a4dj letter letterdj
FLAVOR?=	letter

.if defined(FLAVOR)
.if ${FLAVOR:L} == "a4"
PAPERSIZE=	A4
.elif ${FLAVOR:L} == "a4dj"
PAPERSIZE=	A4dj
.elif ${FLAVOR:L} == "letterdj"
PAPERSIZE=	Letterdj
.elif ${FLAVOR:L} == "letter"
PAPERSIZE=	Letter
.endif
.endif

CONFIGURE_ARGS=	--with-medium=${PAPERSIZE} \
		${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_prog_EMACS=no \
		ac_cv_lib_paper_systempapername=no \
		lispdir=${PREFIX}/share/a2ps/emacs

.for p in bzip2 gv ghostview dvips pdf2ps acroread tex latex ps2pdf \
	bzip distill netscape html2ps
CONFIGURE_ENV+= ac_cv_prog_COM_$p=no
.endfor

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure \
		${WRKSRC}/etc/a2ps_cfg.in

pre-build:
	/usr/bin/touch $(WRKSRC)/doc/*.info
	/usr/bin/touch $(WRKSRC)/doc/*.dvi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/a2ps/etc
	${INSTALL_DATA} ${WRKSRC}/etc/a2ps.cfg ${PREFIX}/share/a2ps/etc
	${INSTALL_DATA} ${WRKSRC}/etc/a2ps-site.cfg ${PREFIX}/share/a2ps/etc

.include <bsd.port.mk>
