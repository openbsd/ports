# $OpenBSD: Makefile,v 1.4 2006/08/03 23:15:57 espie Exp $

COMMENT=		"bluetooth network tools"
DISTNAME=		bluetooth-tools-20050725
CATEGORIES=		net
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.disorder.ru/openbsd/distfiles/

WANTLIB=		c
LIB_DEPENDS=		bluetooth.>=1.0::devel/bluetooth-libs

MAKE_ENV=		BINDIR=${TRUEPREFIX}/bin SBINDIR=${TRUEPREFIX}/sbin \
			MANDIR=${TRUEPREFIX}/man/cat \
			COPTS=-I${LOCALBASE}/include LDADD=-L${LOCALBASE}/lib
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bluetooth
	${INSTALL_DATA} ${WRKSRC}/etc/bluetooth/hosts \
	    ${PREFIX}/share/examples/bluetooth
	${INSTALL_DATA} ${WRKSRC}/etc/bluetooth/protocols \
	    ${PREFIX}/share/examples/bluetooth

.include <bsd.port.mk>
