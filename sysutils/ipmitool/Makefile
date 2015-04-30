# $OpenBSD: Makefile,v 1.14 2015/04/30 14:27:54 sthen Exp $

COMMENT=		manage and configure devices that supports IPMI

DISTNAME=		ipmitool-1.8.15
REVISION=		0
CATEGORIES=		sysutils

HOMEPAGE=		http://ipmitool.sourceforge.net/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m ncurses readline crypto c 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ipmitool/}

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-dependency-tracking
CONFIGURE_ARGS+=	--disable-intf-free
CONFIGURE_ARGS+=	--disable-intf-open
CONFIGURE_ARGS+=	--disable-intf-imb
USE_GROFF =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ipmitool/
	${INSTALL_DATA} ${WRKSRC}/contrib/README ${PREFIX}/share/ipmitool/
	cd ${WRKSRC}/contrib && ${INSTALL_SCRIPT} bmclanconf collect_data.sh \
	    create_rrds.sh create_webpage.sh create_webpage_compact.sh \
	    ipmi.init.basic ipmi.init.redhat ipmievd.init.debian \
	    ipmievd.init.redhat ipmievd.init.suse oem_ibm_sel_map \
	    ${PREFIX}/share/ipmitool/

.include <bsd.port.mk>
