# $OpenBSD: Makefile,v 1.14 2019/03/29 15:54:24 sthen Exp $

COMMENT=	protect against brute force attacks on sshd and others

DISTNAME=	sshguard-2.3.1
CATEGORIES=	security

HOMEPAGE=	https://www.sshguard.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sshguard/}

MAINTAINER=	Andreas Kusalananda Kahari <andreas.kahari@abc.se>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c pthread

CONFIGURE_STYLE=gnu

post-patch:
	${SUBST_CMD} ${WRKSRC}/doc/sshguard.8 \
		${WRKSRC}/examples/sshguard.conf.sample

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sshguard
	${INSTALL_DATA} ${WRKSRC}/examples/*.{example,sample} \
		${PREFIX}/share/examples/sshguard

.include <bsd.port.mk>
