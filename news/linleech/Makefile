# $OpenBSD: Makefile,v 1.9 2004/12/02 19:19:59 alek Exp $
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

MASTER_SITES=		ftp://ftp.funet.fi/pub/mirrors/ftp.debian.org/debian/dists/potato/main/source/news/ \
			http://people.montana.com/~drrom/

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
