# $OpenBSD: Makefile,v 1.17 2001/06/18 20:23:21 lebel Exp $

COMMENT=	"vi clone, many additional features"

V=		ak
DISTNAME=	vim-6.0${V}
PKGNAME=	${DISTNAME}
CATEGORIES=	editors
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.vim.org/pub/vim/unreleased/unix/ \
		ftp://nuxi.ucdavis.edu/pub/vim/unreleased/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unreleased/unix/ \
		ftp://ftp.home.vim.org/pub/vim/unreleased/unix/  \
		ftp://ftp.berlin.de.vim.org/misc/editors/vim/unreleased/unix/ \
		ftp://ftp.is.co.za/applications/editors/vim/unreleased/unix/  \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/unreleased/unix/ 
DISTFILES=	${DISTNAME}-src.tar.bz2 ${DISTNAME}-rt.tar.bz2 \
		${DISTNAME}-xcmdsrv.tar.gz

HOMEPAGE=	http://www.vim.org/

MAINTAINER=	David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FLAVORS=	gtk athena motif no_x11
FLAVOR?=	gtk

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--with-tlib="curses" --enable-multibyte

SUBST_VARS=	V
.if ${FLAVOR:L} == "light"
FLAVOR=no_x11
.endif
.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+=--disable-gui --without-x
.elif ${FLAVOR:L} == "motif" || ${FLAVOR:L} == "lesstif"
CONFIGURE_ARGS+=--enable-gui="motif"
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
USE_MOTIF=any
.elif ${FLAVOR:L} == "athena"
CONFIGURE_ARGS+=--enable-gui="athena"
.elif ${FLAVOR:L} == "gtk"
LIB_DEPENDS=	gtk.1.2::x11/gtk+
CONFIGURE_ARGS+=--enable-gui="gtk" 
.else
.BEGIN:
	@echo "Conflicting flavor: ${FLAVOR}"
	@exit 1
.endif

WRKDIST=		${WRKDIR}/vim60${V}
WRKSRC=			${WRKDIST}/src

.include <bsd.port.mk>
