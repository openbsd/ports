# $OpenBSD: Makefile,v 1.43 2002/08/12 15:58:15 jsyn Exp $

COMMENT=	"scan ports and fingerprint stack of network hosts"

DISTNAME=	nmap-3.00
CATEGORIES=	net security
MASTER_SITES=	${HOMEPAGE}dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.insecure.org/nmap/

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= 	gnu dest
CONFIGURE_ARGS=		--with-libpcap=/usr
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/nbase \
				${WRKSRC}/libpcap-possiblymodified

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
