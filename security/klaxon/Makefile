# $OpenBSD: Makefile,v 1.6 2004/01/09 02:43:49 jose Exp $

COMMENT=	"small service wedge to do ident lookup on connecting party"

DISTNAME=		klaxon
PKGNAME=		klaxon-1.5
CATEGORIES=     	security

HOMEPAGE=		http://www.eng.auburn.edu/users/doug/second.html

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		ftp://ftp.eng.auburn.edu/pub/doug/

ALL_TARGET=		target
MAKE_FLAGS+=		CFLAGS="${CFLAGS}" CC="${CC}"

NO_REGRESS=		Yes

pre-patch:
	@cd ${WRKSRC} && chmod +w klaxon.c && rm -rf SCCS

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/klaxon.5x.ident ${PREFIX}/sbin/klaxon
	@strip ${PREFIX}/sbin/klaxon

.include <bsd.port.mk>
