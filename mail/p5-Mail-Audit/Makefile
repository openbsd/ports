# $OpenBSD: Makefile,v 1.2 2002/05/13 23:31:25 espie Exp $

COMMENT=	"library for creating easy mail filters"

DISTNAME=	Mail-Audit-2.1
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5
NEED_VERSION=	1.515

HOMEPAGE=	http://simon-cozens.org/writings/mail-audit.html

MAINTAINER=	Han Boetes <han@mijncomputer.nl>

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
