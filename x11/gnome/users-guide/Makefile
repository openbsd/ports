# $OpenBSD: Makefile,v 1.5 2002/05/15 18:05:19 espie Exp $

V=			1.2
DISTNAME=		users-guide-${V}
PKGNAME=		gnome-${DISTNAME}
COMMENT=		"official Users Guide for GNOME"
CATEGORIES=		x11/gnome
NEED_VERSION=   	1.455

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/users-guide/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
