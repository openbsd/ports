# $OpenBSD: Makefile,v 1.6 2002/11/04 15:13:49 jakob Exp $

COMMENT=	cisco NetFlow utilities

DISTNAME=	flow-tools-0.62
CATEGORIES=	net

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
	${INSTALL_MAN} ${WRKSRC}/docs/*.1 ${PREFIX}/man/man1
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
