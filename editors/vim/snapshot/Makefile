# $OpenBSD: Makefile,v 1.33 2001/09/16 21:55:01 lebel Exp $

COMMENT=	"vi clone, many additional features"

V=		aw
DISTNAME=	vim-6.0${V}
PKGNAME=	${DISTNAME}
CATEGORIES=	editors
NEED_VERSION=	1.422
MASTER_SITES=	ftp://ftp.vim.org/pub/vim/unreleased/unix/ \
		ftp://nuxi.ucdavis.edu/pub/vim/unreleased/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unreleased/unix/ \
		ftp://ftp.home.vim.org/pub/vim/unreleased/unix/  \
		ftp://ftp.berlin.de.vim.org/misc/editors/vim/unreleased/unix/ \
		ftp://ftp.is.co.za/applications/editors/vim/unreleased/unix/  \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/unreleased/unix/ 
DISTFILES=	${DISTNAME}.tar.bz2

HOMEPAGE=	http://www.vim.org/

MAINTAINER=	David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	iconv.2::converters/libiconv

FLAVORS=	huge gtk athena motif no_x11 perl python
FLAVOR?=	gtk

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--with-tlib="curses" --enable-multibyte

SUBST_VARS=	V

.if ${FLAVOR:L:Mhuge}
CONFIGURE_ARGS+=--with-features=huge
.endif

.if ${FLAVOR:L:Mperl}
CONFIGURE_ARGS+=--enable-perlinterp
.endif

.if ${FLAVOR:L:Mpython}
PYTHON_VER=     2.1
CONFIGURE_ARGS+=--enable-pythoninterp \
	--with-python-config-dir=${LOCALBASE}/lib/python${PYTHON_VER}/config
RUN_DEPENDS+=   python${PYTHON_VER}::lang/python
BUILD_DEPENDS=  ${RUN_DEPENDS}
.endif

.if ${FLAVOR:L:Mno_x11} && \
	!${FLAVOR:L:Mgtk} && !${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mathena}
CONFIGURE_ARGS+=--disable-gui --without-x
.elif ${FLAVOR:L:Mmotif} && \
	!${FLAVOR:L:Mgtk} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena}
CONFIGURE_ARGS+=--enable-gui="motif" --with-x --enable-fontset --enable-xim
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
USE_MOTIF=any
.elif ${FLAVOR:L:Mathena} && \
	!${FLAVOR:L:Mgtk} && !${FLAVOR:L:Mno_x11} && ${FLAVOR:L:Mmotif}
CONFIGURE_ARGS+=--enable-gui="athena" --with-x --enable-fontset --enable-xim
.elif ${FLAVOR:L:Mgtk} && \
	!${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena}
LIB_DEPENDS=	gtk.1.2::x11/gtk+
CONFIGURE_ARGS+=--enable-gui="gtk" --with-x --enable-fontset --enable-xim
.else
ERRORS+="Fatal: Conflicting flavor: ${FLAVOR}"
.endif

WRKDIST=		${WRKDIR}/vim60${V}
WRKSRC=			${WRKDIST}/src

.include <bsd.port.mk>
