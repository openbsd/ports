# $OpenBSD: Makefile,v 1.1.1.1 2006/05/06 17:28:44 wilfried Exp $

COMMENT=		"manage and configure devices that supports IPMI"

DISTNAME=		ipmitool-1.8.7
CATEGORIES=		sysutils

HOMEPAGE=		http://ipmitool.sourceforge.net/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m ncurses readline crypto c 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ipmitool/}

SEPARATE_BUILD=		concurrent
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
