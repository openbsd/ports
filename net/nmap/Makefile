# $OpenBSD: Makefile,v 1.31 2001/01/09 18:52:34 naddy Exp $

DISTNAME=	nmap-2.54BETA7
PKGNAME=	nmap-2.54b7
CATEGORIES=	net security
NEED_VERSION=	1.348
HOMEPAGE=	http://www.insecure.org/nmap/

MAINTAINER=	Brian Caswell <bmc@mitre.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}dist/
EXTRACT_SUFX=	.tgz

FLAVORS=	no_x11
FLAVOR?=

.if !${FLAVOR:L:Mno_x11}
LIB_DEPENDS+=	gtk.1.2::x11/gtk+
.endif

CONFIGURE_STYLE= gnu dest

.include <bsd.port.mk>
