# $OpenBSD: Makefile,v 1.39 2005/12/18 21:53:18 sturm Exp $

COMMENT=	"GNU gettext"

DISTNAME=	gettext-0.14.5
PKGNAME=	${DISTNAME}p0
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
LIB_DEPENDS=	expat.4::textproc/expat
WANTLIB=	c

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-included-gettext \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-libexpat-prefix="${LOCALBASE}" \
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
