# $OpenBSD: Makefile,v 1.16 2019/07/12 20:50:47 sthen Exp $

COMMENT=	squid redirector

DISTNAME=	jesred-1.2pl1
PKGNAME=	jesred-1.2.1
REVISION=	1
CATEGORIES=     www

HOMEPAGE=	http://www.linofee.org/~jel/webtools/jesred/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.linofee.org/~jel/webtools/src/

USE_GMAKE=	Yes
NO_TEST=	Yes

pre-build:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," \
		${WRKSRC}/etc/jesred.conf ${WRKSRC}/path.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jesred ${PREFIX}/libexec
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jesred
	${INSTALL_DATA} ${WRKSRC}/etc/jesred.conf \
		${PREFIX}/share/examples/jesred/jesred.conf.sample
	${INSTALL_DATA} ${WRKSRC}/etc/redirect.acl \
		${PREFIX}/share/examples/jesred/redirect.acl.sample
	${INSTALL_DATA} ${WRKSRC}/etc/redirect.rules \
		${PREFIX}/share/examples/jesred/redirect.rules.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jesred
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/jesred

.include <bsd.port.mk>
