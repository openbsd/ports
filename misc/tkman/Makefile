# OpenBSD makefile for:	tkman
# Version required:     2.0.6
# Date created:         May 20 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.13 2002/03/07 09:28:42 kevlo Exp $
#

COMMENT=	"Tcl/Tk-based manual browser"

DISTNAME=	tkman-2.1
CATEGORIES=	misc 
NEED_VERSION=	1.508

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

HOMEPAGE=	http://tkman.sourceforge.net/

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	tkman

LIB_DEPENDS=	tk83.1.::x11/tk/8.3
RUN_DEPENDS=	::textproc/rman \
		::textproc/glimpse

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tkman ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/retkman ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkman
	${INSTALL_DATA} ${WRKSRC}/tkman-help.html ${PREFIX}/share/doc/tkman

.include <bsd.port.mk>
