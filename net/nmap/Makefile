# $OpenBSD: Makefile,v 1.54 2004/12/16 00:31:23 alek Exp $

COMMENT=	"scan ports and fingerprint stack of network hosts"

DISTNAME=	nmap-3.75
CATEGORIES=	net security
MASTER_SITES=	${HOMEPAGE}dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.insecure.org/nmap/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m pcap ssl stdc++ 

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--with-libpcap=/usr \
			--with-libpcre=${LOCALBASE} \
			--with-openssl=/usr
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/libpcre \
				${WRKSRC}/nsock/src \
				${WRKSRC}/libpcap-possiblymodified

FLAVORS=	no_x11
FLAVOR?=	

LIB_DEPENDS+=	pcre::devel/pcre

.if ${FLAVOR:L:Mno_x11}
ALL_TARGET=	nmap
CONFIGURE_ARGS+=--without-nmapfe
.else
LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+
USE_X11=	Yes
ALL_TARGET=	nmap nmapfe/nmapfe
WANTLIB+=	X11 Xext Xi glib gmodule iconv intl 
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
