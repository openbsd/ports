# $OpenBSD: Makefile,v 1.7 2016/08/31 13:53:11 naddy Exp $

COMMENT=	GNU gettext development and translation tools

VERSION=	0.19.8.1
DISTNAME=	gettext-${VERSION}
PKGNAME=	gettext-tools-${VERSION}
SHARED_LIBS +=  gettextlib           7.1      # unknown
SHARED_LIBS +=  gettextsrc           6.1      # unknown
SHARED_LIBS +=  gettextpo            8.1      # 5.4

SUBST_VARS=	VERSION

CATEGORIES=	devel
# DPB: parallel-safe, not worth it. Too much time in configure

MASTER_SITES=	${MASTER_SITE_GNU:=gettext/}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.gnu.org/software/gettext/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv2.1, GPLv3
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=	devel/gettext

WANTLIB=	c iconv intl m ncurses

# required by the autopoint tool
RUN_DEPENDS=	archivers/xz

WRKSRC=		${WRKDIST}/gettext-tools
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-csharp \
		--disable-java \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-libintl-prefix="${LOCALBASE}" \
		--with-included-glib \
		--with-included-libcroco \
		--with-included-libunistring \
		--with-included-libxml \
		--without-emacs \
		--without-git

MODGNU_CONFIG_GUESS_DIRS=${WRKDIST}/build-aux

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	for f in start-po.el po-mode.el po-compat.el; do \
		${INSTALL_DATA} ${WRKSRC}/misc/$$f \
			${PREFIX}/share/emacs/site-lisp; \
	done

.include <bsd.port.mk>
