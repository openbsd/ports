# $OpenBSD: Makefile,v 1.11 2006/02/05 09:36:22 steven Exp $
# Original from: Curtiss Howard, cereal@schizo.com
#

COMMENT=		"retrieve usenet posts via script"

DISTNAME=		linleech_2.2.1.orig

PKGNAME=		linleech-2.2.1
CATEGORIES=     	news

MAINTAINER=		J Shoemaker <shoemaker@softhome.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m termcap 

MASTER_SITES=		ftp://ftp.funet.fi/pub/mirrors/ftp.debian.org/debian/pool/main/l/linleech/ \
			http://people.montana.com/~drrom/

FAKE=			lib
LIB_DEPENDS=    	slang.::devel/libslang
WRKDIST=		${WRKDIR}/linleech-2.2.1.orig

NO_REGRESS=		Yes

DOCDIR=${PREFIX}/share/doc/linleech

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.linleech ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/leechscript ${DOCDIR}/script.example
	${INSTALL_DATA} ${WRKSRC}/scripts/auth/auth.sl ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/linleech	${PREFIX}/bin

.include <bsd.port.mk>
