# $OpenBSD: Makefile,v 1.9 2009/08/15 23:14:15 ajacoutot Exp $

# XXX Are we affected by CVE-2008-0386? Our sed(1) does not behave as
# the GNU version.

COMMENT=	utilities to assist desktop integration tasks

DISTNAME=	xdg-utils-1.0.2
PKGNAME=	${DISTNAME}p7
CATEGORIES=	devel

HOMEPAGE=	http://portland.freedesktop.org/wiki/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://portland.freedesktop.org/download/

EXTRACT_SUFX=	.tgz
NO_BUILD=	Yes
NO_REGRESS=	Yes

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xdg-utils
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/xdg-utils/README.OpenBSD
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/xdg-utils/README.OpenBSD
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xdg-utils
	${INSTALL_SCRIPT} ${FILESDIR}/x* ${PREFIX}/share/examples/xdg-utils

.include <bsd.port.mk>
