# $OpenBSD: Makefile,v 1.33 2001/01/17 02:06:11 naddy Exp $

DISTNAME=	nmap-2.54BETA7
PKGNAME=	nmap-2.54b7
CATEGORIES=	net security
NEED_VERSION=	1.348
MASTER_SITES=	${HOMEPAGE}dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.insecure.org/nmap/

MAINTAINER=	Brian Caswell <bmc@mitre.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
ALL_TARGET=	nmap
.else
LIB_DEPENDS=	gtk.1.2::x11/gtk+
USE_X11=	Yes
ALL_TARGET=	nmap nmapfe/nmapfe
.endif

.include <bsd.port.mk>
