# $OpenBSD: Makefile,v 1.1.1.1 2009/08/15 10:46:59 sthen Exp $

COMMENT=	NetBSD's iSCSI (RFC 3720) target

DISTNAME=	netbsd-iscsi-20080207
PKGNAME=	${DISTNAME:S/-iscsi/-iscsi-target/}

CATEGORIES=	net sysutils

HOMEPAGE=	http://www.alistaircrooks.co.uk/software.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c pthread

MASTER_SITES=	ftp://ftp.netbsd.org/pub/NetBSD/packages/distfiles/

CONFIGURE_STYLE=gnu

# test harness needs the initiator, not built here (needs fuse)
NO_REGRESS=	Yes

WRKSRC=		 ${WRKDIST}/src

pre-configure:
	@perl -pi -e 's,/etc/iscsi,${SYSCONFDIR}/iscsi,g' \
	    ${WRKSRC}/targets.5 ${WRKSRC}/iscsi-target.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iscsi-target ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKDIST}/doc/FAQ ${PREFIX}/share/doc/iscsi
	${INSTALL_MAN} ${WRKSRC}/iscsi-target.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/targets.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
