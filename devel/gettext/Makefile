# $OpenBSD: Makefile,v 1.46 2007/08/25 13:48:23 naddy Exp $

COMMENT=	GNU gettext

DISTNAME=	gettext-0.16.1
SHARED_LIBS +=  intl                 4.0      # .8.1
SHARED_LIBS +=  asprintf             1.0      # .0.0
SHARED_LIBS +=  gettextlib           1.0      # .0.0
SHARED_LIBS +=  gettextsrc           1.0      # .0.0
SHARED_LIBS +=  gettextpo            2.0      # .3.0

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=gettext/}

HOMEPAGE=	http://www.gnu.org/software/gettext/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	converters/libiconv
WANTLIB=	c expat m

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-included-gettext \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-libexpat-prefix="${X11BASE}"

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

EXTRA_LOCALES=	bg en he hu hr lv nb

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
