COMMENT=	protect against brute force attacks on sshd and others

DISTNAME=	sshguard-2.4.3
CATEGORIES=	security

HOMEPAGE=	https://www.sshguard.net/

SITES=		${SITE_SOURCEFORGE:=sshguard/}

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB+=	c pthread

CONFIGURE_STYLE=gnu
DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-patch:
	${SUBST_CMD} ${WRKSRC}/doc/sshguard.8 \
		${WRKSRC}/examples/sshguard.conf.sample

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sshguard
	${INSTALL_DATA} ${WRKSRC}/examples/*.{example,sample} \
		${PREFIX}/share/examples/sshguard

.include <bsd.port.mk>
