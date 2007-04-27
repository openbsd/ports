# $OpenBSD: Makefile,v 1.45 2007/04/27 18:40:39 bernd Exp $

COMMENT=	"GNU gettext"

DISTNAME=	gettext-0.14.6
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	intl                 3.0      # .7.3
SHARED_LIBS +=	asprintf             1.0      # .0.0
SHARED_LIBS +=	gettextlib           0.0      # .0.0
SHARED_LIBS +=	gettextsrc           0.0      # .0.0
SHARED_LIBS +=	gettextpo            1.0      # .1.0

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
WANTLIB=	c expat

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-included-gettext \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-libexpat-prefix="${X11BASE}" \
		--mandir="${PREFIX}/man"

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

EXTRA_LOCALES=	bg en eo he hu hr lv nb

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
