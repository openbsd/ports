# $OpenBSD: Makefile,v 1.9 2003/10/07 08:59:42 marcm Exp $

COMMENT=		"General GNOME User Documentation"

VERSION=		2.4.0
DISTNAME=		gnome2-user-docs-${VERSION}
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GNU FDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome2-user-docs/2.4/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:scrollkeeper->=0.3.12:textproc/scrollkeeper
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	gnu

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
