# $OpenBSD: Makefile,v 1.13 2011/11/12 13:13:11 gsoares Exp $

COMMENT=	library for creating easy mail filters

DISTNAME=	Mail-Audit-2.226
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		RJBS

RUN_DEPENDS=    	devel/p5-File-HomeDir \
			devel/p5-File-Tempdir \
			mail/p5-Mail-Tools
REGRESS_DEPENDS=	mail/p5-MIME-tools

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Mail-Audit
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/Mail-Audit

.include <bsd.port.mk>
