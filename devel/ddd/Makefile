# $OpenBSD: Makefile,v 1.41 2006/11/11 21:04:27 steven Exp $

COMMENT=	"Data Display Debugger, graphical front-end for GDB, etc"

DISTNAME=	ddd-3.3.11
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=ddd/}

HOMEPAGE=	http://www.gnu.org/software/ddd/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt \
			c m ncurses stdc++

REGRESS_IS_INTERACTIVE=Yes
# Note - we need ~/.XAuthority, which doesn't exist in
# /${PKGNAME}_writes_to_home
REGRESS_FLAGS+=	"DISPLAY=$${DISPLAY}" "HOME=$${HOME}"

VMEM_WARNING=	Yes
USE_MOTIF=	any
USE_GMAKE=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=gnu autoconf no-autoheader
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"
AUTOCONF_VERSION=2.59
SEPARATE_BUILD=	simple

SUBST_VARS+=	DISTNAME

CONFIGURE_ARGS=	--with-readline-libraries=/usr/lib

MAKE_FLAGS=	MAINTAINER="'${MAINTAINER}'"

VMEM_WARNING=	Yes

DOCS=	ddd-paper.ps ddd-themes.pdf ddd-themes.ps ddd.pdf ddd.ps html/ddd.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ddd
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ddd
	@${GZIP_CMD} ${PREFIX}/share/doc/ddd/ddd-paper.ps
	@${GZIP_CMD} ${PREFIX}/share/doc/ddd/ddd-themes.ps
	@${GZIP_CMD} ${PREFIX}/share/doc/ddd/ddd.ps

.include <bsd.port.mk>
