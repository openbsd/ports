# $OpenBSD: Makefile,v 1.39 2001/10/24 12:29:51 espie Exp $

COMMENT=	"port scanning large networks"

DISTNAME=	nmap-2.54BETA25
PKGNAME=	nmap-2.54b25
CATEGORIES=	net security
NEED_VERSION=	1.474
MASTER_SITES=	${HOMEPAGE}dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.insecure.org/nmap/

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/nbase ${WRKSRC}/libpcap-possiblymodified

FLAVORS=	no_x11
FLAVOR?=	

.if ${FLAVOR:L:Mno_x11}
ALL_TARGET=	nmap
.else
LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+
USE_X11=	Yes
ALL_TARGET=	nmap nmapfe/nmapfe
.endif

.include <bsd.port.mk>
