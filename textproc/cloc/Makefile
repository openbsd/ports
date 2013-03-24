# $OpenBSD: Makefile,v 1.4 2013/03/24 21:31:36 benoit Exp $

COMMENT=		count lines of code

DISTNAME=		cloc-1.58
DIST_SUBDIR=		cloc

CATEGORIES=		textproc devel

HOMEPAGE=		http://cloc.sourceforge.net/

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cloc/}
DISTFILES=      	${DISTNAME}.pl
EXTRACT_ONLY=

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${FULLDISTDIR}/${DISTFILES} ${PREFIX}/bin/cloc

.include <bsd.port.mk>
