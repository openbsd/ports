# $OpenBSD: Makefile,v 1.4 2007/10/25 17:15:28 wilfried Exp $

COMMENT=		manage and configure devices that supports IPMI

DISTNAME=		ipmitool-1.8.9
CATEGORIES=		sysutils

HOMEPAGE=		http://ipmitool.sourceforge.net/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m ncurses readline crypto c 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ipmitool/}

SEPARATE_BUILD=		concurrent
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-dependency-tracking
CONFIGURE_ARGS+=	--disable-intf-free
CONFIGURE_ARGS+=	--disable-intf-open
CONFIGURE_ARGS+=	--disable-intf-imb

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ipmitool/
	${INSTALL_DATA} ${WRKSRC}/contrib/README ${PREFIX}/share/ipmitool/
.for f in bmclanconf collect_data.sh create_rrds.sh create_webpage.sh create_webpage_compact.sh ipmi.init.basic ipmi.init.redhat ipmievd.init.debian ipmievd.init.redhat ipmievd.init.suse oem_ibm_sel_map 
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/$f ${PREFIX}/share/ipmitool/
.endfor

.include <bsd.port.mk>
