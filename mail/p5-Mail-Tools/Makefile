#   $OpenBSD: Makefile,v 1.11 2002/06/09 05:31:47 wilfried Exp $

COMMENT=	"modules for handling mail with perl"

DISTNAME=	MailTools-1.15
PKGNAME=	p5-Mail-Tools-1.15
CATEGORIES=	mail devel perl5
NEED_VERSION=	1.496
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

BUILD_DEPENDS=	:p5-libnet-*:net/p5-libnet
RUN_DEPENDS=	${BUILD_DEPENDS}
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
