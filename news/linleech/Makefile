# $OpenBSD: Makefile,v 1.6 2002/10/28 01:50:16 naddy Exp $
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

MASTER_SITES=		ftp://ftp.grolier.fr/pub/mirrors/ftp.debian.org/debian/dists/potato/main/source/news/ \
			ftp://ftp.cs.wisc.edu/pub/mirrors/linux/debian/dists/potato/main/source/news/ \
			ftp://ftp.gigabell.net/pub/unix/linux/debian/dists/potato/main/source/news/ \
         		ftp://ftp.funet.fi/pub/mirrors/ftp.debian.org/debian/dists/potato/main/source/news/

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
