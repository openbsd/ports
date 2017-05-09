# $OpenBSD: Makefile,v 1.29 2017/05/09 07:11:55 ajacoutot Exp $

# Does _not_ depend on desktop-file-utils, hicolor-icon-theme,
# gtk-update-icon-cache, shared-mime-info... on purpose as it should
# only use whatever is available on the system at runtime.

COMMENT=		utilities to assist desktop integration tasks

DISTNAME=		xdg-utils-1.1.2

CATEGORIES=		devel

HOMEPAGE=		https://wiki.freedesktop.org/www/Software/xdg-utils/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://portland.freedesktop.org/download/

PKG_ARCH=		*
USE_GMAKE=		Yes

BUILD_DEPENDS=		textproc/xmlto

CONFIGURE_STYLE=	gnu

pre-configure:
	sed -i -e 's,/usr/local/share,${LOCALBASE}/share,g;' \
		-e 's,/etc/xdg,${SYSCONFDIR}/xdg,g' \
		${WRKSRC}/scripts/xdg-*.in

post-install:
	# Official NetBeans does not know about OpenBSD, thus at least
	# some java apps use 'email' and 'open' as fallbacks.
	ln -s xdg-email ${PREFIX}/bin/email
	ln -s xdg-open ${PREFIX}/bin/open

do-test:
	cd ${WRKSRC}/autotests && ${MAKE_PROGRAM}

.include <bsd.port.mk>
