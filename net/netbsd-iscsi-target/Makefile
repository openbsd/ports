# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:33 sthen Exp $

COMMENT=	iSCSI (RFC 3720) target from NetBSD

DISTNAME=	netbsd-iscsi-20111006
PKGNAME=	${DISTNAME:S/-iscsi/-iscsi-target/}
REVISION=	6

CATEGORIES=	net sysutils

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

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
	rm ${PREFIX}/lib/lib* ${PREFIX}/man/man3/libiscsi.3

.include <bsd.port.mk>
