# $OpenBSD: Makefile,v 1.2 2001/02/25 17:17:41 danh Exp $
# Original from: Curtiss Howard, cereal@schizo.com
#

DISTNAME=		linleech_2.2.1.orig

PKGNAME=		linleech-2.2.1
CATEGORIES=     	news
NEED_VERSION=		1.230

MAINTAINER=		J Shoemaker <shoemaker@softhome.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.grolier.fr/pub/mirrors/ftp.debian.org/debian/dists/potato/main/source/news/ \
			ftp://ftp.cs.wisc.edu/pub/mirrors/linux/debian/dists/potato/main/source/news/ \
			ftp://ftp.gigabell.net/pub/unix/linux/debian/dists/potato/main/source/news/

LIB_DEPENDS=    	slang.::devel/libslang
WRKDIST=		${WRKDIR}/linleech-2.2.1.orig

DOCDIR=${PREFIX}/share/doc/linleech

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.linleech ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/leechscript ${DOCDIR}/script.example
	${INSTALL_DATA} ${WRKSRC}/scripts/auth/auth.sl ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/linleech	${PREFIX}/bin

.include <bsd.port.mk>
