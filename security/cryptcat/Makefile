# $OpenBSD: Makefile,v 1.1.1.1 2007/11/20 21:08:56 jasper Exp $

COMMENT=		netcat enhanced with twofish encryption

V=			1.2.1
DISTNAME=		cryptcat-unix-$V
PKGNAME=		cryptcat-$V
CATEGORIES=		security

HOMEPAGE=		http://cryptcat.sourceforge.net

MAINTAINER=		Laurent Fanis <laurent@humppa.nl>

# From the README "freely given away
# with no restrictions except giving credit where it is due"
# Added Twofish encryption is under Cryptix General Licence
PERMIT_PACKAGE_CDROM=	No clear Licence
PERMIT_PACKAGE_FTP=	No clear Licence
PERMIT_DISTFILES_CDROM= No clear liscence
PERMIT_DISTFILES_FTP=	No clear liscence

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cryptcat/}

EXTRACT_SUFX=		.tar

ALL_TARGET=		openbsd

WRKDIST=		${WRKDIR}/unix

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cryptcat ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cryptcat
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/cryptcat

.include <bsd.port.mk>
