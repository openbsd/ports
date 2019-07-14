# $OpenBSD: Makefile,v 1.7 2019/07/14 02:16:52 naddy Exp $

COMMENT=		netcat enhanced with twofish encryption

V=			1.2.1
DISTNAME=		cryptcat-unix-$V
PKGNAME=		cryptcat-$V
REVISION =		2
CATEGORIES=		security

HOMEPAGE=		http://cryptcat.sourceforge.net

MAINTAINER=		Laurent Fanis <laurent.fanis@gmail.com>

# From the README "freely given away
# with no restrictions except giving credit where it is due"
# Added Twofish encryption is under Cryptix General Licence
PERMIT_PACKAGE=		No clear Licence
PERMIT_DISTFILES=	No clear Licence

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cryptcat/}

EXTRACT_SUFX=		.tar

ALL_TARGET=		openbsd

WRKDIST=		${WRKDIR}/unix

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cryptcat ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cryptcat
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/cryptcat

.include <bsd.port.mk>
