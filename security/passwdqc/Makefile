# $OpenBSD: Makefile,v 1.1.1.1 2005/01/30 20:36:28 djm Exp $

COMMENT=		"plugin password complexity checker for passwd(1)"

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

MAKE_FLAGS=		LOCALBASE='${LOCALBASE}'
NO_REGRESS=		Yes

.include <bsd.port.mk>
