#   $OpenBSD: Makefile,v 1.12 2002/10/30 04:13:36 pvalchev Exp $

COMMENT=	"modules for handling mail with perl"

DISTNAME=	MailTools-1.15
PKGNAME=	p5-Mail-Tools-1.15
CATEGORIES=	mail devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

# Build examples as well
post-build:
	@cd ${WRKSRC} && for i in bin/*.PL; do perl $$i; done

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-MailTools
	${INSTALL_SCRIPT} ${WRKSRC}/bin/forwd_demo ${PREFIX}/share/examples/p5-MailTools
	${INSTALL_SCRIPT} ${WRKSRC}/bin/rplyto_demo ${PREFIX}/share/examples/p5-MailTools
	${INSTALL_SCRIPT} ${WRKSRC}/bin/send_demo ${PREFIX}/share/examples/p5-MailTools
	${INSTALL_DATA} ${WRKSRC}/README.demos ${PREFIX}/share/examples/p5-MailTools

.include <bsd.port.mk>
