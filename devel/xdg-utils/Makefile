# $OpenBSD: Makefile,v 1.27 2015/01/04 15:36:22 ajacoutot Exp $

# Does _not_ depend on desktop-file-utils, hicolor-icon-theme,
# gtk-update-icon-cache, shared-mime-info... on purpose as it should
# only use whatever is available on the system at runtime.

COMMENT=	utilities to assist desktop integration tasks

DISTNAME=	xdg-utils-1.1.0-rc3
PKGNAME=	xdg-utils-1.1.0rc3
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	http://portland.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://people.freedesktop.org/~rdieter/xdg-utils/

PKG_ARCH=	*
USE_GMAKE=	Yes
NO_TEST=	Yes

BUILD_DEPENDS=	textproc/xmlto

CONFIGURE_STYLE=gnu

pre-configure:
	perl -pi -e 's,/usr/local/share,${LOCALBASE}/share,g;' \
		-e 's,/etc/xdg,${SYSCONFDIR}/xdg,g' \
		${WRKSRC}/scripts/xdg-*.in

post-install:
	# Official NetBeans does not know about OpenBSD, thus at least
	# some java apps use 'email' and 'open' as fallbacks.
	ln -s xdg-email ${PREFIX}/bin/email
	ln -s xdg-open ${PREFIX}/bin/open

.include <bsd.port.mk>
