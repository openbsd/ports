# $OpenBSD: Makefile,v 1.7 2002/05/13 07:54:10 jsyn Exp $
			
COMMENT=		"passive network mapping tool"

DISTNAME=		siphon-v.666
PKGNAME=		siphon-0.666
CATEGORIES=    		security net
NEED_VERSION=		1.515

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://siphon.datanerds.net/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/utilities/}

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS='${CFLAGS} -Wall -I. \
				-DSYSCONFDIR="\"${SYSCONFDIR}\""' \
			CCFLAGS='-pthread \
				-DSYSCONFDIR="\"${SYSCONFDIR}\""'
MAKE_ENV=		SYSCONFDIR="${SYSCONFDIR}"

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/siphon ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/siphon
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/siphon
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/siphon
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/siphon
	${INSTALL_DATA} ${WRKSRC}/osprints.conf ${PREFIX}/share/examples/siphon

.include <bsd.port.mk>
