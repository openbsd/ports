# $OpenBSD: Makefile,v 1.15 2013/03/11 11:23:52 espie Exp $

COMMENT=	library for creating easy mail filters

DISTNAME=	Mail-Audit-2.227
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
CPAN_AUTHOR=		RJBS

RUN_DEPENDS=    	devel/p5-File-HomeDir \
			devel/p5-File-Tempdir \
			mail/p5-Mail-Tools
TEST_DEPENDS=	mail/p5-MIME-tools

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Mail-Audit
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/Mail-Audit

.include <bsd.port.mk>
