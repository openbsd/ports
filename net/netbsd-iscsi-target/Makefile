# $OpenBSD: Makefile,v 1.3 2012/02/21 22:41:30 sthen Exp $

COMMENT=	iSCSI (RFC 3720) target from NetBSD

DISTNAME=	netbsd-iscsi-20111006
PKGNAME=	${DISTNAME:S/-iscsi/-iscsi-target/}

CATEGORIES=	net sysutils

MAINTAINER=	Roman Kravchuk <kravchuk.kp@gmail.com>

HOMEPAGE=	http://www.alistaircrooks.co.uk/software.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c pthread

SHARED_LIBS +=	iscsi                0.0      # 0.2

MASTER_SITES=	http://ftp.netbsd.org/pub/NetBSD/packages/distfiles/ \
		ftp://ftp.netbsd.org/pub/NetBSD/packages/distfiles/

CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes

pre-configure:
	cd ${WRKSRC}/src/target; perl -pi -e \
	    's,/etc/iscsi,${SYSCONFDIR}/iscsi,g' targets.5 iscsi-target.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netbsd-iscsi-target \
	    ${PREFIX}/share/examples/netbsd-iscsi-target
	cd ${WRKSRC}/doc; \
	${INSTALL_DATA} * ${PREFIX}/share/doc/netbsd-iscsi-target; \
	cd ../src; \
	${INSTALL_DATA} etc/auths etc/targets examples/* \
	    ${PREFIX}/share/examples/netbsd-iscsi-target

.include <bsd.port.mk>
