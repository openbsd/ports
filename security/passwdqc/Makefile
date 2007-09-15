# $OpenBSD: Makefile,v 1.3 2007/09/15 23:30:00 merdely Exp $

COMMENT=		plugin password complexity checker for passwd(1)

DISTNAME=		passwdqc-0.1
CATEGORIES=     	security sysutils

HOMEPAGE=		http://www.mindrot.org/passwdqc.html

# BSDish
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://www2.mindrot.org/files/passwdqc/

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/passwdqc/passwdqc ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/passwdqc/passwdqc.cat8 \
	    ${PREFIX}/man/cat8/passwdqc.0

.include <bsd.port.mk>
