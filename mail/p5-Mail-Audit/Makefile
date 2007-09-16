# $OpenBSD: Makefile,v 1.7 2007/09/16 00:17:06 merdely Exp $

COMMENT=	library for creating easy mail filters

DISTNAME=	Mail-Audit-2.1
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	mail

# GPL/Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

BUILD_DEPENDS=    	:p5-Mail-Tools-*:mail/p5-Mail-Tools
RUN_DEPENDS=    	:p5-Mail-Tools-*:mail/p5-Mail-Tools

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Mail-Audit
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/Mail-Audit

.include <bsd.port.mk>
