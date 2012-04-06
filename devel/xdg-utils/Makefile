# $OpenBSD: Makefile,v 1.17 2012/04/06 07:53:38 ajacoutot Exp $

# Does _not_ depend on desktop-file-utils, hicolor-icon-theme,
# gtk-update-icon-cache, shared-mime-info... on purpose as it should
# only use whatever is available on the system at runtime.

COMMENT=	utilities to assist desktop integration tasks

DISTNAME=	xdg-utils-1.0.2
EXTRACT_SUFX=	.tgz
REVISION=	13

CATEGORIES=	devel

HOMEPAGE=	http://portland.freedesktop.org/wiki/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://portland.freedesktop.org/download/

NO_BUILD=	Yes
NO_REGRESS=	Yes

USE_GROFF =	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	XMLTO=${LOCALBASE}/bin/xmlto

pre-configure:
	${SUBST_CMD} \
		${WRKSRC}/scripts/{xdg-desktop-menu,xdg-icon-resource,xdg-mime}

post-install:
	# Official NetBeans does not know about OpenBSD, thus at least
	# some java apps use 'email' and 'open' as fallbacks.
	ln -s xdg-email ${PREFIX}/bin/email
	ln -s xdg-open ${PREFIX}/bin/open
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xdg-utils
	${INSTALL_SCRIPT} ${FILESDIR}/x* ${PREFIX}/share/examples/xdg-utils

.include <bsd.port.mk>
