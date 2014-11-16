# $OpenBSD: Makefile,v 1.16 2014/11/16 10:15:49 benoit Exp $

COMMENT=	library for creating easy mail filters

DISTNAME=	Mail-Audit-2.228
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
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
