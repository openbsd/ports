# $OpenBSD: Makefile,v 1.5 2006/07/19 15:11:53 steven Exp $

COMMENT=	"library for creating easy mail filters"

DISTNAME=	Mail-Audit-2.1
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	mail perl5

# GPL/Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Mail/}

BUILD_DEPENDS=    	:p5-Mail-Tools-*:mail/p5-Mail-Tools
RUN_DEPENDS=    	:p5-Mail-Tools-*:mail/p5-Mail-Tools

CONFIGURE_STYLE= 	perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Mail-Audit
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/Mail-Audit

.include <bsd.port.mk>
