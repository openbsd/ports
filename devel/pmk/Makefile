# $OpenBSD: Makefile,v 1.8 2006/08/15 11:09:37 steven Exp $

COMMENT=		"dependency configuration tool"

VERSION=		0.9.3
DISTNAME=		pmk-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		devel

HOMEPAGE=		http://pmk.sourceforge.net/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pmk/}

CONFIGURE_ENV+=		SYSCONFDIR=${SYSCONFDIR}
CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	/bin/sh pmkcfg.sh -p ${PREFIX}

NO_REGRESS=	Yes

.include <bsd.port.mk>
