# $OpenBSD: Makefile,v 1.5 2001/09/04 15:22:14 jakob Exp $

COMMENT=	cisco NetFlow utilities

DISTNAME=	flow-tools-0.55
CATEGORIES=	net
NEED_VERSION=	1.363

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOME_PAGE=	http://www.splintered.net/sw/flow-tools/

MASTER_SITES=	ftp://ftp.eng.oar.net/pub/flow-tools/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

CONFIGS_CFG=	map filter-acl
CONFIGS_SYM=	asn ip-prot tcp-port

do-install:
	(cd ${WRKSRC}/src; env ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} install)
	(cd ${WRKSRC}/docs; env ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} install)
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/flow-tools/cfg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/flow-tools/sym
.for file in ${CONFIGS_CFG}
	${INSTALL_DATA} ${WRKSRC}/configs/${file} \
		${PREFIX}/share/examples/flow-tools/cfg
.endfor
.for file in ${CONFIGS_SYM}
	${INSTALL_DATA} ${WRKSRC}/configs/${file} \
		${PREFIX}/share/examples/flow-tools/sym
.endfor

.include <bsd.port.mk>
