# $OpenBSD: Makefile,v 1.2 2004/12/24 14:27:19 alek Exp $

COMMENT=		"dependency configuration tool"

VERSION=		0.8.2
DISTNAME=		pmk-${VERSION}
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
