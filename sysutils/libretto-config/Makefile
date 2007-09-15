# $OpenBSD: Makefile,v 1.8 2007/09/15 21:14:02 merdely Exp $

COMMENT=	Libretto BIOS Setting Program

DISTNAME=	libapm-linux-1.0beta5
PKGNAME=	libretto-config-1.0b5
CATEGORIES=	sysutils

MAINTAINER=	Todd Miller <millert@openbsd.org>

ONLY_FOR_ARCHS=	i386

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=	http://club.pep.ne.jp/~ishioka/Software/Linux/libapm/

WRKDIST=	${WRKDIR}/libapm
DOCDIR=		${PREFIX}/share/doc/libretto-config
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/libapm ${PREFIX}/sbin/libretto-config
	${INSTALL_MAN} ${WRKSRC}/libapm-e.man ${PREFIX}/man/man8/libretto-config.8

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/APM-EXBIOS-e.txt ${DOCDIR}/APM-EXBIOS.txt
	${INSTALL_DATA} ${WRKSRC}/README-e.1st ${DOCDIR}/README.1st

.include <bsd.port.mk>
