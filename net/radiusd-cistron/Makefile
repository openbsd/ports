# $OpenBSD: Makefile,v 1.14 2001/12/17 20:47:47 danh Exp $

COMMENT=	"Cistron RADIUS server"

VERSION=	1.6.5
DISTNAME=	radiusd-cistron-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.496
MASTER_SITES=	ftp://ftp.radius.cistron.nl/pub/radius/ \
		ftp://ftp.freeradius.org/pub/radius/ \
		ftp://ftp.mma.com.br/pub/cistron-radius/

HOMEPAGE=	http://www.radius.cistron.nl/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

WRKSRC=		${WRKDIST}/src
MAKE_FILE=	Makefile.BSD
MAKE_FLAGS+=	CC="${CC}" CFLAGS="${CFLAGS} -DNOSHADOW -DNDBM" LCRYPT="" 
FAKE_FLAGS+=	BINDIR='${WRKINST}${PREFIX}/bin' \
		SBINDIR='${WRKINST}${PREFIX}/sbin' \
		MANDIR='${WRKINST}${PREFIX}/man' \
		RADIUS_DIR='${WRKINST}${PREFIX}/share/examples/radiusd-cistron'
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/radiusd-cistron
	@for file in ${WRKDIST}/doc/README* ; do \
		${INSTALL_DATA} $$file ${PREFIX}/share/doc/radiusd-cistron; \
	done

.include <bsd.port.mk>
