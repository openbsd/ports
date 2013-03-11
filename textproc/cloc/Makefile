# $OpenBSD: Makefile,v 1.3 2013/03/11 11:42:41 espie Exp $

COMMENT=		count lines of code

DISTNAME=		cloc-1.56
DIST_SUBDIR=		cloc

CATEGORIES=		textproc devel

HOMEPAGE=		http://cloc.sourceforge.net/

MAINTAINER=		Joerg Zinke <zinke@openbsd.org>

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
