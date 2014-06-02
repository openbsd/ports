# $OpenBSD: Makefile,v 1.24 2014/06/02 09:25:33 stsp Exp $

# Does _not_ depend on desktop-file-utils, hicolor-icon-theme,
# gtk-update-icon-cache, shared-mime-info... on purpose as it should
# only use whatever is available on the system at runtime.

COMMENT=	utilities to assist desktop integration tasks

DISTNAME=	xdg-utils-1.1.0-rc1
PKGNAME=	xdg-utils-1.1.0rc1
REVISION=	4

CATEGORIES=	devel

HOMEPAGE=	http://portland.freedesktop.org/wiki/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://portland.freedesktop.org/download/

NO_BUILD=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_path_XMLTO=""

pre-configure:
	${SUBST_CMD} \
		${WRKSRC}/scripts/xdg-desktop-menu \
		${WRKSRC}/scripts/xdg-icon-resource \
		${WRKSRC}/scripts/xdg-mime \
		${WRKSRC}/scripts/xdg-open \
		${WRKSRC}/scripts/xdg-settings

post-install:
	# Official NetBeans does not know about OpenBSD, thus at least
	# some java apps use 'email' and 'open' as fallbacks.
	ln -s xdg-email ${PREFIX}/bin/email
	ln -s xdg-open ${PREFIX}/bin/open

.include <bsd.port.mk>
