# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:50 espie Exp $

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
USE_GROFF =	Yes

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
