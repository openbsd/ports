# $OpenBSD: Makefile,v 1.13 2004/12/10 23:59:35 marcm Exp $

COMMENT=		"General GNOME User Documentation"

VERSION=		2.8.1
DISTNAME=		gnome2-user-docs-${VERSION}
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GNU FDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome2-user-docs/2.8/}
EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	gnu

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
