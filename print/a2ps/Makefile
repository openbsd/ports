# $OpenBSD: Makefile,v 1.46 2010/10/18 21:25:08 espie Exp $

COMMENT=	format files for printing on PostScript printers

DISTNAME=	a2ps-4.14
REVISION=	3
CATEGORIES=	print
SHARED_LIBS=	a2ps	2.0
MODGNU_SHARED_LIBS=a2ps	''

HOMEPAGE=	http://www.gnu.org/software/a2ps/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

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
USE_GROFF =	Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/auxdir

BUILD_DEPENDS=	::print/psutils \
		::devel/gperf

FLAVORS=	a4 a4dj letter letterdj
FLAVOR?=	letter

.if defined(FLAVOR)
.if ${FLAVOR:L} == "a4"
PAPERSIZE=	A4
RUN_DEPENDS+=	:psutils-*-a4:print/psutils,a4
.elif ${FLAVOR:L} == "a4dj"
PAPERSIZE=	A4dj
RUN_DEPENDS+=	:psutils-*-a4:print/psutils,a4
.elif ${FLAVOR:L} == "letterdj"
PAPERSIZE=	Letterdj
RUN_DEPENDS+=	:psutils-*-letter:print/psutils,letter
.elif ${FLAVOR:L} == "letter"
PAPERSIZE=	Letter
RUN_DEPENDS+=	:psutils-*-letter:print/psutils,letter
.else
RUN_DEPENDS+=	::print/psutils
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
