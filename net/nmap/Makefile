# $OpenBSD: Makefile,v 1.49 2004/05/16 08:38:12 jolan Exp $

COMMENT=	"scan ports and fingerprint stack of network hosts"

DISTNAME=	nmap-3.50
CATEGORIES=	net security
MASTER_SITES=	${HOMEPAGE}dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.insecure.org/nmap/

MAINTAINER=	Dan Weeks <danimal@danimal.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= 	gnu dest
CONFIGURE_ARGS=		--with-libpcap=/usr --with-libpcre=${LOCALBASE}
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/nbase \
				${WRKSRC}/nsock/src \
				${WRKSRC}/libpcap-possiblymodified

# XXX workaround linking issue on hppa
.if ${MACHINE_ARCH:Mhppa}
PATCH_LIST=	patch-* hppa-*
.endif

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
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
