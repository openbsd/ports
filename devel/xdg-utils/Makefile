# $OpenBSD: Makefile,v 1.25 2014/08/28 10:26:20 ajacoutot Exp $

# Does _not_ depend on desktop-file-utils, hicolor-icon-theme,
# gtk-update-icon-cache, shared-mime-info... on purpose as it should
# only use whatever is available on the system at runtime.

COMMENT=	utilities to assist desktop integration tasks

DISTNAME=	xdg-utils-1.1.0-rc2
PKGNAME=	xdg-utils-1.1.0rc2

DIST_SUBDIR=	xdg-utils
MASTER_SITES0=	http://cgit.freedesktop.org/xdg/xdg-utils/patch/?id=
PATCH_DIST_STRIP=-p1
IDS=		a983a14293129ea94b634579a46dc69835e88e15 \
		cba39e7a00abe27b3bff49e2d455bb30ad33dde6 \
		495fa68306f6f5b0c0bb312e92f0f2a0e35fa567 \
		50254545a0d2c181bf9bce4c7723044ee7186cb5 \
		3eaf93ab3303e14813885b6b743b48a1c3b5a6ab \
		316b9adc05c6d871360afb1195939c5fc975ccff \
		ba265f969b9061d221915c2528122c44a85ad7c2 \
		69adcfeb4679f75eb24f357f304715d3c014273b \
		5913207e625a92b73cd9489aea4b7b10bf3eb855 \
		34e033845ea6997bc4fdafd9bdd4856bfa5d0d36 \
		7cd846d62e17f36be2f7d29e56188ddf6a6d72cb
.for i in ${IDS}
PATCHFILES +=		$i:0
.endfor
BUILD_DEPENDS +=	textproc/xmlto

CATEGORIES=	devel

HOMEPAGE=	http://portland.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://people.freedesktop.org/~rdieter/xdg-utils/

PKG_ARCH=	*
USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=gnu
#CONFIGURE_ENV=	ac_cv_path_XMLTO=""

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
