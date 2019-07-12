# $OpenBSD: Makefile,v 1.18 2019/07/12 20:47:34 sthen Exp $

COMMENT=	library for creating easy mail filters

DISTNAME=	Mail-Audit-2.228
CATEGORIES=	mail

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
CPAN_AUTHOR=		RJBS

RUN_DEPENDS=    	devel/p5-File-HomeDir \
			devel/p5-File-Tempdir \
			mail/p5-Mail-Tools
TEST_DEPENDS =		mail/p5-MIME-tools \
			mail/p5-Mail-POP3Client

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Mail-Audit
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/Mail-Audit

.include <bsd.port.mk>
