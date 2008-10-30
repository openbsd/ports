# $OpenBSD: Makefile,v 1.1.1.1 2008/10/30 14:28:36 ajacoutot Exp $

COMMENT=	utilities to assist desktop integration tasks

DISTNAME=	xdg-utils-1.0.2
CATEGORIES=	devel

HOMEPAGE=	http://portland.freedesktop.org/wiki/

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

.include <bsd.port.mk>
