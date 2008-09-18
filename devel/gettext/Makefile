# $OpenBSD: Makefile,v 1.49 2008/09/18 14:47:59 naddy Exp $

COMMENT=	GNU gettext

DISTNAME=	gettext-0.17
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=  intl                 4.0      # .8.2
SHARED_LIBS +=  asprintf             1.0      # .0.0
SHARED_LIBS +=  gettextlib           2.0      # .0.0
SHARED_LIBS +=  gettextsrc           2.0      # .0.0
SHARED_LIBS +=  gettextpo            3.0      # .4.0

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=gettext/}

HOMEPAGE=	http://www.gnu.org/software/gettext/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPL, GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	converters/libiconv
WANTLIB=	c expat m ncurses

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-included-gettext \
		--with-included-glib \
		--with-included-libcroco \
		--with-included-libxml \
		--without-emacs
CONFIGURE_ENV=	gt_cv_locale_ja=none	# skip recode-sr-latin-2 regress test

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

EXTRA_LOCALES=	bg en he hr hu lv no

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	@for f in start-po.el po-mode.el po-compat.el; do \
		${INSTALL_DATA} ${WRKSRC}/gettext-tools/misc/$$f \
			${PREFIX}/share/emacs/site-lisp; \
	done
	@for l in ${EXTRA_LOCALES}; do \
		${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$$l/LC_MESSAGES; \
	done

.include <bsd.port.mk>
