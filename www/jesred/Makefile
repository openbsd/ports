# $OpenBSD: Makefile,v 1.5 2002/10/29 01:30:41 naddy Exp $

COMMENT=	"squid redirector"

DISTNAME=	jesred-1.2pl1
PKGNAME=	jesred-1.2.1
CATEGORIES=     www

HOMEPAGE=	http://ivs.cs.uni-magdeburg.de/~elkner/webtools/jesred/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ivs.cs.uni-magdeburg.de/~elkner/webtools/src/

USE_GMAKE=	Yes
NO_REGRESS=	Yes

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
