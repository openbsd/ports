# $OpenBSD: Makefile,v 1.28 2001/09/03 14:00:12 lebel Exp $

COMMENT=	"vi clone, many additional features"

V=		au
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
ERRORS+="Fatal: Conflicting flavor: ${FLAVOR}"
.endif

WRKDIST=		${WRKDIR}/vim60${V}
WRKSRC=			${WRKDIST}/src

.include <bsd.port.mk>
