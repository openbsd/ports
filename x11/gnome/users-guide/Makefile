# $OpenBSD: Makefile,v 1.11 2004/06/23 03:26:20 marcm Exp $

COMMENT=		"General GNOME User Documentation"

VERSION=		2.6.0.1
DISTNAME=		gnome2-user-docs-${VERSION}
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GNU FDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome2-user-docs/2.6/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	gnu

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
