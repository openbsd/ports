# $OpenBSD: Makefile,v 1.41 2002/05/23 01:02:09 pvalchev Exp $

COMMENT=	"port scanning large networks"

DISTNAME=	nmap-2.54BETA33
PKGNAME=	nmap-2.54b33
CATEGORIES=	net security
NEED_VERSION=	1.525
MASTER_SITES=	${HOMEPAGE}dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.insecure.org/nmap/

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-libpcap=/usr
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
