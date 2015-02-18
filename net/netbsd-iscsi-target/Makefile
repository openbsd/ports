# $OpenBSD: Makefile,v 1.9 2015/02/18 12:51:31 sthen Exp $

COMMENT=	iSCSI (RFC 3720) target from NetBSD

DISTNAME=	netbsd-iscsi-20111006
PKGNAME=	${DISTNAME:S/-iscsi/-iscsi-target/}
REVISION=	3

CATEGORIES=	net sysutils

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

SHARED_LIBS +=	iscsi                0.0      # 0.2

MASTER_SITES=	http://ftp.netbsd.org/pub/pkgsrc/distfiles/ \
		ftp://ftp.netbsd.org/pub/pkgsrc/distfiles/

CONFIGURE_STYLE=gnu

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
