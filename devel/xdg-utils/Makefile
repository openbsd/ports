# Does _not_ depend on desktop-file-utils, hicolor-icon-theme,
# gtk-update-icon-cache, shared-mime-info... on purpose as it should
# only use whatever is available on the system at runtime.

COMMENT=		utilities to assist desktop integration tasks

V=			1.2.0-beta1
DISTNAME=		xdg-utils-${V:S/-//}

# use a git checkout; releases are not made regularly
COMMIT=			1a58bc28f6844898532daf9ee1bf6da7764955a9
SITES=			https://gitlab.freedesktop.org/xdg/xdg-utils/-/archive/v${V}/
WRKDIST=		${WRKDIR}/xdg-utils-v${V}-f8bc7454112899413a60996b7b5d9aebfa4e6864
#EXTRACT_SUFX=		.tar.gz

CATEGORIES=		devel

HOMEPAGE=		https://wiki.freedesktop.org/www/Software/xdg-utils/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

#SITES=		https://portland.freedesktop.org/download/

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
